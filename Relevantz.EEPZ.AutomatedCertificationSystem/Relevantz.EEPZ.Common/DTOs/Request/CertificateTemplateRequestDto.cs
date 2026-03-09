using System.ComponentModel.DataAnnotations;

namespace Relevantz.EEPZ.Common.DTOs.Request
{
    public class CertificateTemplateRequestDto
    {
        public string TemplateName { get; set; } = null!;

        public string TemplateType { get; set; } = null!;

        public string TemplateLayout { get; set; } = null!;

        [Required]
        public int LogoId { get; set; }

        public int EmployeeId { get; set; }

        public string EmployeeName { get; set; } = null!;

        public string Achievement { get; set; } = "";
    }
}