using Microsoft.AspNetCore.Http;

namespace Relevantz.EEPZ.Common.DTOs.Request
{
    public class BaseTemplateRequestDto
    {
        public string TemplateName { get; set; } = null!;

        public string CssClass { get; set; } = null!;

        public IFormFile Image { get; set; } = null!;
    }
}