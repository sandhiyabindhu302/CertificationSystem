using Relevantz.EEPZ.Common.DTOs.Request;
using Relevantz.EEPZ.Common.DTOs.Response;
using Relevantz.EEPZ.Data.IRepository;
using Relevantz.EEPZ.Core.IService;
using Relevantz.EEPZ.Common.Entities;
using Microsoft.EntityFrameworkCore;
using Relevantz.EEPZ.Data.DBContexts;
using System.Text.Json;
using System.Drawing;  // For Bitmap
using System.Drawing.Imaging;  // For ImageFormat
using ZXing;  // For QR Code generation
using iText.Kernel.Pdf; // iText Pdf Libraries
using iText.Layout;  // iText Layout Libraries
using iText.Layout.Element;  // For iText Image Element
using iText.Layout.Properties;  // iText Properties
using iText.IO.Image;  // For image handling in iText
using iText.Kernel.Font;
using iText.IO.Font.Constants;
using iText.Kernel.Pdf.Canvas;
using System.Drawing;  // For Bitmap
using System.Drawing.Imaging;  // For ImageFormat
using System.IO;
using System;
using ZXing.Common;

namespace Relevantz.EEPZ.Core.Service
{
    public class CertificateService : ICertificateService
    {
        private readonly ICertificateRepository _certificateRepository;
        private readonly ITemplateRepository _templateRepository;
        private readonly IUserProfileRepository _userProfileRepository;
        private readonly ISkillRepository _skillRepository;
        private readonly IGoalRepository _goalRepository;
        private readonly IRewardRepository _rewardRepository;
        private readonly IBaseTemplateRepository _baseTemplateRepository;

        private readonly ITemplateLogoRepository _logoRepository;
        private readonly ApplicationDbContext _context;

        private readonly string _apiBaseUrl;

        public CertificateService(string apiBaseUrl)
        {
            _apiBaseUrl = apiBaseUrl; // Assign the injected value to the field
        }


        public CertificateService(
         ICertificateRepository certificateRepository,
         ITemplateRepository templateRepository,
         IUserProfileRepository userProfileRepository,
         ISkillRepository skillRepository,
         IGoalRepository goalRepository,
         IRewardRepository rewardRepository,
         IBaseTemplateRepository baseTemplateRepository,
         ITemplateLogoRepository templateLogoRepository,
         ApplicationDbContext context,
         string apiBaseUrl) // Accept apiBaseUrl as a parameter
        {
            _certificateRepository = certificateRepository;
            _templateRepository = templateRepository;
            _userProfileRepository = userProfileRepository;
            _skillRepository = skillRepository;
            _goalRepository = goalRepository;
            _rewardRepository = rewardRepository;
            _baseTemplateRepository = baseTemplateRepository;
            _logoRepository = templateLogoRepository;
            _context = context;
            _apiBaseUrl = apiBaseUrl; // Initialize _apiBaseUrl
        }


        // Create Certificate Template
        public async Task<CertificateTemplateDto> CreateCertificateTemplateAsync(CertificateTemplateRequestDto request)
        {
            var template = new Certificatetemplate
            {
                TemplateName = request.TemplateName,
                TemplateType = request.TemplateType,
                TemplateLayout = request.TemplateLayout,
                LogoId = request.LogoId,
                EmployeeId = request.EmployeeId,   // IMPORTANT
                EmployeeName = request.EmployeeName,
                Achievement = request.Achievement,
                CreatedAt = DateTime.UtcNow,
                UpdatedAt = DateTime.UtcNow
            };

            await _templateRepository.AddAsync(template);

            return new CertificateTemplateDto
            {
                TemplateId = template.TemplateId,
                TemplateName = template.TemplateName,
                TemplateType = template.TemplateType,
                TemplateLayout = template.TemplateLayout,
                LogoId = template.LogoId,
                EmployeeId = template.EmployeeId,
                EmployeeName = template.EmployeeName,
                Achievement = template.Achievement,
                IsFinalized = template.IsFinalized
            };
        }

        // Get Template By Id
        public async Task<CertificateTemplateDto> GetCertificateTemplateByIdAsync(int templateId)
        {
            var template = await _templateRepository.GetByIdAsync(templateId);

            if (template == null)
                return null;

            return new CertificateTemplateDto
            {
                TemplateId = template.TemplateId,
                TemplateName = template.TemplateName,
                TemplateType = template.TemplateType,
                TemplateLayout = template.TemplateLayout,
                LogoId = template.LogoId,
                EmployeeId = template.EmployeeId,
                EmployeeName = template.EmployeeName,
                Achievement = template.Achievement,
                IsFinalized = template.IsFinalized

            };
        }

        // Get All Templates
        public async Task<IEnumerable<CertificateTemplateDto>> GetAllCertificateTemplatesAsync()
        {
            var templates = await _templateRepository.GetAllAsync();

            return templates.Select(template => new CertificateTemplateDto
            {
                TemplateId = template.TemplateId,
                TemplateName = template.TemplateName,
                TemplateType = template.TemplateType,
                TemplateLayout = template.TemplateLayout,
                LogoId = template.LogoId,
                EmployeeId = template.EmployeeId,
                EmployeeName = template.EmployeeName,
                Achievement = template.Achievement,
                IsFinalized = template.IsFinalized
            });
        }

        public async Task<GeneratedCertificateDto> GenerateCertificateAsync(GenerateCertificateRequestDto request)
        {
            var template = await _templateRepository.GetByIdAsync(request.TemplateId);
            var profile = await _userProfileRepository.GetByEmployeeIdAsync(request.EmployeeId);

            if (template == null || profile == null)
                throw new InvalidOperationException("Template or employee not found.");

            if (!template.IsFinalized)
                throw new InvalidOperationException("Template is not finalized yet.");

            string employeeName = $"{profile.FirstName} {profile.LastName}";
            var layout = JsonDocument.Parse(template.TemplateLayout).RootElement;

            float canvasW = layout.GetProperty("canvas").GetProperty("width").GetSingle();
            float canvasH = layout.GetProperty("canvas").GetProperty("height").GetSingle();

            string folder = Path.Combine(Directory.GetCurrentDirectory(), "Certificates");
            Directory.CreateDirectory(folder);

            string fileName = $"certificate_{request.EmployeeId}_{DateTime.UtcNow.Ticks}.pdf";
            string filePath = Path.Combine(folder, fileName);

            string serialNumber = GenerateSerialNumber();

            var certificate = new Employeecertificate
            {
                EmployeeId = request.EmployeeId,
                TemplateId = request.TemplateId,
                AreaOfAchievement = template.Achievement,
                CertificateFilePath = filePath,
                IssueDate = DateTime.UtcNow,
                Status = "Generated",
                SerialNumber = serialNumber,
                EmployeeName = employeeName
            };

            await _certificateRepository.AddAsync(certificate);

            using (var writer = new PdfWriter(filePath))
            using (var pdf = new PdfDocument(writer))
            {
                var pageSize = new iText.Kernel.Geom.PageSize(canvasW, canvasH);
                pdf.AddNewPage(pageSize);

                var page = pdf.GetPage(1);
                var canvas = new PdfCanvas(page);

                Document doc = new Document(pdf, pageSize);
                doc.SetMargins(0, 0, 0, 0);

                PdfFont bold = PdfFontFactory.CreateFont(StandardFonts.HELVETICA_BOLD);
                PdfFont normal = PdfFontFactory.CreateFont(StandardFonts.HELVETICA);

                string bg = layout.GetProperty("canvas").GetProperty("background").GetString();

                if (!string.IsNullOrEmpty(bg))
                {
                    string bgPath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", bg.TrimStart('/'));

                    if (File.Exists(bgPath))
                    {
                        var bgImg = new iText.Layout.Element.Image(
                            iText.IO.Image.ImageDataFactory.Create(bgPath));

                        bgImg.ScaleAbsolute(canvasW, canvasH);
                        bgImg.SetFixedPosition(0, 0);

                        doc.Add(bgImg);
                    }
                }

                void DrawCentered(string text, float y, float size, PdfFont font)
                {
                    var paragraph = new Paragraph(text)
                        .SetFont(font)
                        .SetFontSize(size)
                        .SetTextAlignment(TextAlignment.CENTER)
                        .SetFixedPosition(0, canvasH - y, canvasW);

                    doc.Add(paragraph);
                }

                // ================= LOGO =================

                var logo = layout.GetProperty("logo");

                if (logo.GetProperty("enabled").GetBoolean())
                {
                    var logoData = await _logoRepository.GetLogoByIdAsync(template.LogoId);

                    if (logoData?.LogoImage != null)
                    {
                        float widthPx = logo.GetProperty("size").GetSingle();

                        var rawImage = iText.IO.Image.ImageDataFactory.Create(logoData.LogoImage);

                        var img = new iText.Layout.Element.Image(rawImage);

                        img.ScaleToFit(widthPx, widthPx);

                        // center horizontally
                        float logoX = (canvasW / 2) - (widthPx / 2);

                        // move very close to top
                        float logoY = canvasH - widthPx + 40;

                        img.SetFixedPosition(logoX, logoY);

                        doc.Add(img);
                    }
                }

                // ================= TITLE =================

                var title = layout.GetProperty("title");

                if (title.GetProperty("enabled").GetBoolean())
                {
                    DrawCentered(
                        title.GetProperty("text").GetString(),
                        title.GetProperty("position").GetProperty("y").GetSingle(),
                        title.GetProperty("fontSize").GetSingle(),
                        normal
                    );
                }

                // ================= TYPE (RESTORED) =================

                var type = layout.GetProperty("type");

                if (type.GetProperty("enabled").GetBoolean())
                {
                    DrawCentered(
                        template.TemplateType,
                        type.GetProperty("position").GetProperty("y").GetSingle(),
                        type.GetProperty("fontSize").GetSingle(),
                        normal
                    );
                }

                // ================= NAME =================

                var name = layout.GetProperty("name");

                if (name.GetProperty("enabled").GetBoolean())
                {
                    DrawCentered(
                        employeeName,
                        name.GetProperty("position").GetProperty("y").GetSingle(),
                        name.GetProperty("fontSize").GetSingle(),
                        bold
                    );
                }

                // ================= ACHIEVEMENT =================

                var ach = layout.GetProperty("achievement");

                if (ach.GetProperty("enabled").GetBoolean())
                {
                    DrawCentered(
                          certificate.AreaOfAchievement,
                        ach.GetProperty("position").GetProperty("y").GetSingle(),
                        ach.GetProperty("fontSize").GetSingle(),
                        bold
                    );
                }

                // ================= QR CODE =================

                var qrText =
             $"This certificate is provided by our organization\n" +  // Added message
             $"Certificate ID: {certificate.CertificateId}\n" +
             $"Serial Number: {serialNumber}\n" +
             $"Employee Name: {employeeName}\n" +
             $"Achievement: {template.Achievement}\n" +
             $"Issued On: {DateTime.UtcNow:MM/dd/yyyy}";

                var barcodeWriter = new BarcodeWriterPixelData
                {
                    Format = BarcodeFormat.QR_CODE,
                    Options = new EncodingOptions
                    {
                        Width = 120,
                        Height = 120
                    }
                };

                var pixelData = barcodeWriter.Write(qrText);

                using (var ms = new MemoryStream())
                {
                    using (var bitmap = new Bitmap(pixelData.Width, pixelData.Height, PixelFormat.Format32bppRgb))
                    {
                        var bitmapData = bitmap.LockBits(
                            new Rectangle(0, 0, pixelData.Width, pixelData.Height),
                            ImageLockMode.WriteOnly,
                            bitmap.PixelFormat
                        );

                        System.Runtime.InteropServices.Marshal.Copy(
                            pixelData.Pixels,
                            0,
                            bitmapData.Scan0,
                            pixelData.Pixels.Length
                        );

                        bitmap.UnlockBits(bitmapData);
                        bitmap.Save(ms, ImageFormat.Png);
                    }

                    var qrImage = new iText.Layout.Element.Image(
                        iText.IO.Image.ImageDataFactory.Create(ms.ToArray()));

                    qrImage.ScaleAbsolute(70, 70);

                    // top-right
                    qrImage.SetFixedPosition(canvasW - 85, canvasH - 85);

                    doc.Add(qrImage);
                }

                // ================= BOTTOM =================

                DrawCentered(
                    $"Issued On: {DateTime.UtcNow:MMMM dd, yyyy}",
                    canvasH - 40,
                    12,
                    normal
                );

                DrawCentered(
                    $"Serial Number: {serialNumber}",
                    canvasH - 20,
                    12,
                    normal
                );

                doc.Close();
            }

            return new GeneratedCertificateDto(
                certificate.CertificateId,
                filePath,
                certificate.IssueDate!.Value,
                await File.ReadAllBytesAsync(filePath)
            );
        }

        private string GenerateSerialNumber()
        {
            // timestamp ensures uniqueness
            long timestamp = DateTimeOffset.UtcNow.ToUnixTimeMilliseconds();

            // random 3 digit number
            Random random = new Random();
            int randomPart = random.Next(100, 999);

            return $"{timestamp}{randomPart}";
        }


        // Get Employee Certificate
        public async Task<GeneratedCertificateDto> GetEmployeeCertificateAsync(int employeeId)
        {
            var certificate = await _certificateRepository.GetByEmployeeIdAsync(employeeId);

            if (certificate == null)
                return null;

            if (!File.Exists(certificate.CertificateFilePath))
                return null;

            return new GeneratedCertificateDto(
                certificate.CertificateId,
                certificate.CertificateFilePath,
                certificate.IssueDate ?? DateTime.UtcNow,
                null
            );
        }


        public async Task<IEnumerable<MasterSkillDto>> GetAllSkillsAsync()
        {
            var skills = await _context.MasterSkills.ToListAsync();

            return skills.Select(s => new MasterSkillDto
            {
                SkillId = s.SkillId,
                SkillName = s.SkillName,
                Description = s.Description
            });
        }

        public async Task<IEnumerable<GoalDto>> GetAllGoalsAsync()
        {
            var goals = await _context.Goals.ToListAsync();

            return goals.Select(g => new GoalDto
            {
                GoalId = g.GoalId,
                GoalTitle = g.GoalTitle,
                GoalDescription = g.GoalDescription
            });
        }

        public async Task<IEnumerable<RewardResponseDto>> GetAllRewardsAsync()
        {
            var rewards = await _rewardRepository.GetAllRewardsAsync();
            return rewards;
        }

        public async Task<bool> DeleteCertificateTemplateAsync(int templateId)
        {
            var template = await _templateRepository.GetByIdAsync(templateId);

            if (template == null)
                return false;

            await _templateRepository.DeleteAsync(template);

            return true;
        }

        public async Task<BaseTemplateDto> UploadBaseTemplateAsync(BaseTemplateRequestDto request)
        {
            var folderPath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot/templates");

            if (!Directory.Exists(folderPath))
                Directory.CreateDirectory(folderPath);

            var fileName = $"{Guid.NewGuid()}_{request.Image.FileName}";
            var filePath = Path.Combine(folderPath, fileName);

            using (var stream = new FileStream(filePath, FileMode.Create))
            {
                await request.Image.CopyToAsync(stream);
            }

            var template = new CertificateBaseTemplate
            {
                TemplateName = request.TemplateName,
                CssClass = request.CssClass,
                PreviewImage = $"/templates/{fileName}",
                CreatedAt = DateTime.UtcNow
            };

            await _baseTemplateRepository.AddAsync(template);

            return new BaseTemplateDto
            {
                BaseTemplateId = template.BaseTemplateId,
                TemplateName = template.TemplateName,
                CssClass = template.CssClass,
                PreviewImage = template.PreviewImage
            };
        }

        // Get Base Templates
        public async Task<IEnumerable<BaseTemplateDto>> GetBaseTemplatesAsync()
        {
            var templates = await _baseTemplateRepository.GetAllAsync();

            return templates.Select(t => new BaseTemplateDto
            {
                BaseTemplateId = t.BaseTemplateId,
                TemplateName = t.TemplateName,
                CssClass = t.CssClass,
                PreviewImage = t.PreviewImage
            });
        }

        public async Task<bool> DeleteBaseTemplateAsync(int baseTemplateId)
        {
            var template = await _baseTemplateRepository.GetByIdAsync(baseTemplateId);

            if (template == null)
                return false;

            // Optionally delete the physical file if it exists
            var filePath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", template.PreviewImage.TrimStart('/'));
            if (File.Exists(filePath))
            {
                File.Delete(filePath); // Delete the file
            }

            // Delete the template from the database
            await _baseTemplateRepository.DeleteAsync(template);
            return true;
        }

        public async Task<CertificateTemplateDto> UpdateCertificateTemplateAsync(int templateId, CertificateTemplateRequestDto request)
        {
            var template = await _templateRepository.GetByIdAsync(templateId);

            if (template == null)
                return null;

            template.EmployeeId = request.EmployeeId;
            template.EmployeeName = request.EmployeeName;
            template.Achievement = request.Achievement;
            template.TemplateName = request.TemplateName;
            template.TemplateType = request.TemplateType;
            template.TemplateLayout = request.TemplateLayout;
            template.LogoId = request.LogoId;
            template.UpdatedAt = DateTime.UtcNow;

            await _templateRepository.UpdateAsync(template);

            return new CertificateTemplateDto
            {
                TemplateId = template.TemplateId,
                TemplateName = template.TemplateName,
                TemplateType = template.TemplateType,
                TemplateLayout = template.TemplateLayout,
                LogoId = template.LogoId,
                EmployeeId = template.EmployeeId,
                EmployeeName = template.EmployeeName,
                Achievement = template.Achievement,
                IsFinalized = template.IsFinalized
            };
        }
        public async Task<GeneratedCertificateDto> FinalizeTemplateAsync(int templateId)
        {
            // Fetch the template
            var template = await _templateRepository.GetByIdAsync(templateId);

            if (template == null)
                throw new InvalidOperationException("Template not found.");

            if (!template.EmployeeId.HasValue)
                throw new InvalidOperationException("EmployeeId is not assigned.");

            // Mark template finalized
            if (!template.IsFinalized)
            {
                template.IsFinalized = true;
                await _templateRepository.UpdateAsync(template);
            }

            // Always generate a NEW certificate
            var certificate = await GenerateCertificateAsync(new GenerateCertificateRequestDto
            {
                EmployeeId = template.EmployeeId.Value,
                TemplateId = templateId
            });

            if (certificate == null)
                throw new InvalidOperationException("Certificate generation failed.");

            return certificate;
        }
    }
}