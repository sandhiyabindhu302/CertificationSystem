using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Relevantz.EEPZ.Core.IService;
using Relevantz.EEPZ.Common.DTOs.Request;
using Relevantz.EEPZ.Common.DTOs.Response;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Relevantz.EEPZ.Common.Entities;
using Relevantz.EEPZ.Data.Repository;

namespace Relevantz.EEPZ.Api.Controllers
{
    [ApiController]
    [Route("api/certificates")]
    public class CertificateController : ControllerBase
    {
        private readonly ICertificateService _certificateService;
        private readonly ITemplateLogoService _templateLogoService;

        private readonly ICertificateRepository _certificateRepository;  // Add this line


        public CertificateController(
       ICertificateService certificateService,
       ITemplateLogoService templateLogoService,
       ICertificateRepository certificateRepository)  // Add this in the constructor
        {
            _certificateService = certificateService;
            _templateLogoService = templateLogoService;
            _certificateRepository = certificateRepository;  // Assign to the private field
        }

        // Create Template
        [HttpPost("template")]
        [Authorize(Roles = "HR")]
        public async Task<IActionResult> CreateTemplate([FromBody] CertificateTemplateRequestDto request)
        {
            var template = await _certificateService.CreateCertificateTemplateAsync(request);
            return Ok(template);
        }

        // Update Template
        [HttpPut("template/{templateId}")]
        [Authorize(Roles = "HR")]
        public async Task<IActionResult> UpdateTemplate(int templateId, [FromBody] CertificateTemplateRequestDto request)
        {
            var template = await _certificateService.UpdateCertificateTemplateAsync(templateId, request);

            if (template == null)
                return NotFound();

            return Ok(template);
        }

        // Get All Templates
        [HttpGet("templates")]
        [Authorize(Roles = "HR")]
        public async Task<IActionResult> GetAllTemplates()
        {
            var templates = await _certificateService.GetAllCertificateTemplatesAsync();
            return Ok(templates);
        }

        // Get Template By Id
        [HttpGet("template/{templateId}")]
        [Authorize(Roles = "HR")]
        public async Task<IActionResult> GetTemplateById(int templateId)
        {
            var template = await _certificateService.GetCertificateTemplateByIdAsync(templateId);

            if (template == null)
                return NotFound(new { message = "Template not found" });

            return Ok(template);
        }

        // Upload Logo
        [HttpPost("logo/upload")]
        [Authorize(Roles = "HR")]
        public async Task<IActionResult> UploadLogo([FromForm] IFormFile logoFile)
        {
            if (logoFile == null || logoFile.Length == 0)
                return BadRequest("No file uploaded");

            var logoId = await _templateLogoService.UploadLogoAsync(logoFile);
            return Ok(new { logoId });
        }

        // Get Logo
        [HttpGet("logo/{logoId}")]
        public async Task<IActionResult> GetLogo(int logoId)
        {
            var logo = await _templateLogoService.GetLogoByIdAsync(logoId);

            if (logo == null)
                return NotFound();

            return File(logo.LogoImage, "image/png");
        }

        // Get All Skills
        [HttpGet("skills")]
        [Authorize(Roles = "HR")]
        public async Task<IActionResult> GetSkillsAsync()
        {
            var skills = await _certificateService.GetAllSkillsAsync();
            return Ok(skills);
        }

        // Get All Goals
        [HttpGet("goals")]
        [Authorize(Roles = "HR")]
        public async Task<IActionResult> GetGoalsAsync()
        {
            var goals = await _certificateService.GetAllGoalsAsync();
            return Ok(goals);
        }

        // Get All Rewards
        [HttpGet("rewards")]
        [Authorize(Roles = "HR")]
        public async Task<IActionResult> GetAllRewards()
        {
            var rewards = await _certificateService.GetAllRewardsAsync();

            if (rewards == null || !rewards.Any())
                return NotFound("No rewards found.");

            return Ok(rewards);
        }

        // Generate Certificate
        [HttpPost("generate")]
        public async Task<IActionResult> GenerateCertificate([FromBody] GenerateCertificateRequestDto request)
        {
            var certificate = await _certificateService.GenerateCertificateAsync(request);

            if (certificate == null)
                return NotFound();

            return Ok(certificate);
        }

        // Get Employee Certificate
        [HttpGet("employee/{employeeId}")]
        [Authorize(Roles = "Employee")]
        public async Task<IActionResult> GetEmployeeCertificate(int employeeId)
        {
            var certificate = await _certificateService.GetEmployeeCertificateAsync(employeeId);

            if (certificate == null)
                return NotFound();

            return Ok(certificate);
        }

        // Download Certificate
        [HttpGet("download/{employeeId}")]
        [Authorize(Roles = "Employee")]
        public async Task<IActionResult> DownloadCertificate(int employeeId)
        {
            var certificate = await _certificateService.GetEmployeeCertificateAsync(employeeId);

            if (certificate == null)
                return NotFound();

            var pdfBytes = await System.IO.File.ReadAllBytesAsync(certificate.CertificateFilePath);

            return File(pdfBytes, "application/pdf", "certificate.pdf");
        }

        [HttpGet("verify/{serialNumber}")]
        public async Task<IActionResult> VerifyCertificate(string serialNumber)
        {
            var certificate = await _certificateRepository.GetBySerialNumberAsync(serialNumber);

            if (certificate == null)
            {
                return NotFound(new { message = "Certificate not found" });
            }

            var employeeName = certificate.EmployeeName;  // Retrieve employee name from the certificate data

            var certificateDto = new
            {
                CertificateId = certificate.CertificateId,
                EmployeeId = certificate.EmployeeId,
                TemplateId = certificate.TemplateId,
                AreaOfAchievement = certificate.AreaOfAchievement,
                IssueDate = certificate.IssueDate,
                Status = certificate.Status,
                CertificateFilePath = certificate.CertificateFilePath,
                EmployeeName = employeeName  // Include the employee's name in the response
            };

            return Ok(certificateDto);
        }

        [HttpDelete("base-template/{baseTemplateId}")]
        [Authorize(Roles = "HR")]
        public async Task<IActionResult> DeleteBaseTemplate(int baseTemplateId)
        {
            var result = await _certificateService.DeleteBaseTemplateAsync(baseTemplateId);

            if (!result)
                return NotFound(new { message = "Base Template not found" });

            return Ok(new { message = "Base Template deleted successfully" });
        }

        // Delete Template
        [HttpDelete("template/{templateId}")]
        [Authorize(Roles = "HR")]
        public async Task<IActionResult> DeleteTemplate(int templateId)
        {
            var result = await _certificateService.DeleteCertificateTemplateAsync(templateId);

            if (!result)
                return NotFound();

            return Ok(new { message = "Template deleted successfully" });
        }

        // Upload Base Template
        [HttpPost("base-template/upload")]
        [Authorize(Roles = "HR")]
        public async Task<IActionResult> UploadBaseTemplate([FromForm] BaseTemplateRequestDto request)
        {
            var template = await _certificateService.UploadBaseTemplateAsync(request);
            return Ok(template);
        }

        // Get Base Templates
        [HttpGet("base-templates")]
        [Authorize(Roles = "HR")]
        public async Task<IActionResult> GetBaseTemplates()
        {
            var templates = await _certificateService.GetBaseTemplatesAsync();
            return Ok(templates);
        }

        [HttpPost("finalize-template/{templateId}")]
        [Authorize(Roles = "HR")]
        public async Task<IActionResult> FinalizeTemplate(int templateId)
        {
            var certificate = await _certificateService.FinalizeTemplateAsync(templateId);

            if (certificate == null)
                return NotFound("Template not found");

            return Ok(new
            {
                message = "Template finalized successfully and certificate generated",
                certificate
            });
        }
    }
}