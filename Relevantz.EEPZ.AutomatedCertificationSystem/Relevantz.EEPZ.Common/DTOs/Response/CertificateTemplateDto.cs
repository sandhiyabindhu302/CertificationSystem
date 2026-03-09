using System;

namespace Relevantz.EEPZ.Common.DTOs.Response
{
    public class CertificateTemplateDto
    {
        public int TemplateId { get; set; }

        public string TemplateName { get; set; } = null!;

        public string TemplateType { get; set; } = null!;

        public string TemplateLayout { get; set; } = null!;

        public int LogoId { get; set; }

        public int? EmployeeId { get; set; }

        public string EmployeeName { get; set; } = null!;

        public string Achievement { get; set; } = null!;

        public bool IsFinalized { get; set; }   // ADD THIS
    }
}