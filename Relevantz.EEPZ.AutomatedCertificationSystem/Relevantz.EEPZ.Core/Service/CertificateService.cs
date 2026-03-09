using Relevantz.EEPZ.Common.DTOs.Request;
using Relevantz.EEPZ.Common.DTOs.Response;
using Relevantz.EEPZ.Data.IRepository;
using Relevantz.EEPZ.Core.IService;
using Relevantz.EEPZ.Common.Entities;
using Microsoft.EntityFrameworkCore;
using Relevantz.EEPZ.Data.DBContexts;
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

        public CertificateService(
     ICertificateRepository certificateRepository,
     ITemplateRepository templateRepository,
     IUserProfileRepository userProfileRepository,
     ISkillRepository skillRepository,
     IGoalRepository goalRepository,
     IRewardRepository rewardRepository,
     IBaseTemplateRepository baseTemplateRepository,
     ITemplateLogoRepository templateLogoRepository,
     ApplicationDbContext context)
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

        // Update Certificate Template
        public async Task<CertificateTemplateDto> UpdateCertificateTemplateAsync(int templateId, CertificateTemplateRequestDto request)
        {
            var template = await _templateRepository.GetByIdAsync(templateId);

            if (template == null)
                return null;

            template.TemplateName = request.TemplateName;
            template.TemplateType = request.TemplateType;
            template.TemplateLayout = request.TemplateLayout;
            template.LogoId = request.LogoId;
            template.EmployeeId = request.EmployeeId;
            template.EmployeeName = request.EmployeeName;
            template.Achievement = request.Achievement;
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
                return null;

            string employeeName = $"{profile.FirstName} {profile.LastName}"; 
            var layout = System.Text.Json.JsonDocument.Parse(template.TemplateLayout).RootElement;

            float canvasW = layout.GetProperty("canvas").GetProperty("width").GetSingle();
            float canvasH = layout.GetProperty("canvas").GetProperty("height").GetSingle();

            string folder = Path.Combine(Directory.GetCurrentDirectory(), "Certificates");
            Directory.CreateDirectory(folder);

            string fileName = $"certificate_{request.EmployeeId}_{DateTime.UtcNow.Ticks}.pdf";
            string filePath = Path.Combine(folder, fileName);

            // Generate the serial number
            string serialNumber = GenerateSerialNumber(); // Generate the serial number

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

                // ================= BACKGROUND =================
                string bg = layout.GetProperty("canvas").GetProperty("background").GetString();
                if (!string.IsNullOrEmpty(bg))
                {
                    string bgPath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", bg.TrimStart('/'));
                    if (File.Exists(bgPath))
                    {
                        var bgImg = new iText.Layout.Element.Image(iText.IO.Image.ImageDataFactory.Create(bgPath));
                        bgImg.ScaleAbsolute(canvasW, canvasH);
                        bgImg.SetFixedPosition(0, 0);
                        doc.Add(bgImg);
                    }
                }

                // Convert TOP-left → PDF bottom-left
                float Y(float top, float elementHeight) => canvasH - top - elementHeight;

                // =============== LOGO ===============
                var logo = layout.GetProperty("logo");
                if (logo.GetProperty("enabled").GetBoolean())
                {
                    var logoData = await _logoRepository.GetLogoByIdAsync(template.LogoId);

                    if (logoData?.LogoImage != null)
                    {
                        float xPx = logo.GetProperty("position").GetProperty("x").GetSingle();
                        float yPx = logo.GetProperty("position").GetProperty("y").GetSingle();
                        float widthPx = logo.GetProperty("size").GetSingle();

                        var rawImage = iText.IO.Image.ImageDataFactory.Create(logoData.LogoImage);
                        float originalW = rawImage.GetWidth();
                        float originalH = rawImage.GetHeight();

                        float scale = widthPx / originalW;
                        float heightPx = originalH * scale;

                        float pdfX = xPx;
                        float pdfY = canvasH - yPx - heightPx;

                        var img = new iText.Layout.Element.Image(rawImage);
                        img.ScaleAbsolute(widthPx, heightPx);
                        img.SetFixedPosition(pdfX, pdfY);

                        doc.Add(img);
                    }
                }

                // ================= TEXT RENDERER =================
                void Draw(string text, float x, float y, float size, PdfFont font)
                {
                    canvas.BeginText();
                    canvas.SetFontAndSize(font, size);
                    canvas.MoveText(x, canvasH - y); // TOP-left baseline
                    canvas.ShowText(text);
                    canvas.EndText();
                }

                // ================= TITLE =================
                var title = layout.GetProperty("title");
                if (title.GetProperty("enabled").GetBoolean())
                {
                    Draw(title.GetProperty("text").GetString(),
                         title.GetProperty("position").GetProperty("x").GetSingle(),
                         title.GetProperty("position").GetProperty("y").GetSingle(),
                         title.GetProperty("fontSize").GetSingle(),
                         bold);
                }

                // ================= TYPE =================
                var type = layout.GetProperty("type");
                if (type.GetProperty("enabled").GetBoolean())
                {
                    Draw(template.TemplateType,
                         type.GetProperty("position").GetProperty("x").GetSingle(),
                         type.GetProperty("position").GetProperty("y").GetSingle(),
                         type.GetProperty("fontSize").GetSingle(),
                         normal);
                }

                // ================= NAME =================
                var name = layout.GetProperty("name");
                if (name.GetProperty("enabled").GetBoolean())
                {
                    Draw(employeeName,
                         name.GetProperty("position").GetProperty("x").GetSingle(),
                         name.GetProperty("position").GetProperty("y").GetSingle(),
                         name.GetProperty("fontSize").GetSingle(),
                         bold);
                }

                // ================= ACHIEVEMENT =================
                var ach = layout.GetProperty("achievement");
                if (ach.GetProperty("enabled").GetBoolean())
                {
                    Draw(template.Achievement,
                         ach.GetProperty("position").GetProperty("x").GetSingle(),
                         ach.GetProperty("position").GetProperty("y").GetSingle(),
                         ach.GetProperty("fontSize").GetSingle(),
                         normal);
                }

                // ================= ISSUED ON =================
                string issuedOnText = $"Issued On: {DateTime.UtcNow:MMMM dd, yyyy}";
                float issuedOnX = canvasW / 2 - 80; // Position it at the center
                float issuedOnY = 40; // 40px from the bottom (adjust as needed)

                float pdfIssuedOnY = canvasH - issuedOnY;

                Draw(issuedOnText, issuedOnX, pdfIssuedOnY, 12, normal);

                // ================= SERIAL NUMBER =================
                //  string serialNumberText = $"Serial Number: {serialNumber}";
                float serialNumberX = canvasW / 2 - 80;
                float serialNumberY = 60; // 60px from the bottom (adjust as needed)
                float pdfSerialNumberY = canvasH - serialNumberY;

                // Draw(serialNumberText, serialNumberX, pdfSerialNumberY, 12, normal);

                var qrCodeText = $"http://192.168.29.82:3007/employee/verify-certificate?serialNumber={serialNumber}"; // URL containing the serial number                Console.WriteLine("QR Code Text: " + qrCodeText); // Log the QR Code text for debugging

                var barcodeWriter = new BarcodeWriterPixelData
                {
                    Format = BarcodeFormat.QR_CODE,
                    Options = new ZXing.Common.EncodingOptions
                    {
                        Width = 300,
                        Height = 300
                    }
                };

                var pixelData = barcodeWriter.Write(qrCodeText);

                using (var ms = new MemoryStream())
                {
                    using (var bitmap = new Bitmap(pixelData.Width, pixelData.Height, PixelFormat.Format32bppRgb))
                    {
                        var bitmapData = bitmap.LockBits(new Rectangle(0, 0, pixelData.Width, pixelData.Height),
                            ImageLockMode.WriteOnly, bitmap.PixelFormat);

                        System.Runtime.InteropServices.Marshal.Copy(pixelData.Pixels, 0, bitmapData.Scan0, pixelData.Pixels.Length);
                        bitmap.UnlockBits(bitmapData);

                        bitmap.Save(ms, ImageFormat.Png);
                    }

                    var qrImage = new iText.Layout.Element.Image(iText.IO.Image.ImageDataFactory.Create(ms.ToArray()));
                    qrImage.ScaleAbsolute(100, 100); // Adjust size as needed
                    qrImage.SetFixedPosition(canvasW - 120, canvasH - 120); // Position it at the bottom-right corner
                    doc.Add(qrImage);
                }

                doc.Close();
            }

            // Create new certificate record in the database with serial number
            var saved = new Employeecertificate
            {
                EmployeeId = request.EmployeeId,
                TemplateId = request.TemplateId,
                AreaOfAchievement = template.Achievement,
                CertificateFilePath = filePath,
                IssueDate = DateTime.UtcNow,
                Status = "Generated",
                SerialNumber = serialNumber, // Store the generated serial number
                 EmployeeName = employeeName // Save employee name here
            };

            await _certificateRepository.AddAsync(saved);

            return new GeneratedCertificateDto(
                saved.CertificateId,
                filePath,
                saved.IssueDate!.Value,
                await File.ReadAllBytesAsync(filePath)
            );
        }

        private string GenerateSerialNumber()
        {
            Random random = new Random();
            long serialNumber = (long)(random.Next(10000000, 99999999)) * 100000000L + random.Next(10000000, 99999999);
            string serialNumberString = serialNumber.ToString();
            return serialNumberString.Length > 10 ? serialNumberString.Substring(0, 10) : serialNumberString; // Ensure the length is 10
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

        public async Task<GeneratedCertificateDto?> FinalizeTemplateAsync(int templateId)
        {
            var template = await _templateRepository.GetByIdAsync(templateId);

            if (template == null)
                return null;

            if (!template.EmployeeId.HasValue)
                throw new Exception("Employee not assigned to template.");

            // Only generate certificate
            var certificate = await GenerateCertificateAsync(
                new GenerateCertificateRequestDto
                {
                    EmployeeId = template.EmployeeId.Value,
                    TemplateId = templateId
                });

            return certificate;
        }
    }
}