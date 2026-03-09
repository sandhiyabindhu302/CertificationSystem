using Microsoft.AspNetCore.Http;

namespace Relevantz.EEPZ.Common.DTOs.Request
{
    public class LogoUploadRequestDto
    {
        public IFormFile LogoFile { get; set; } = null!;
    }
}