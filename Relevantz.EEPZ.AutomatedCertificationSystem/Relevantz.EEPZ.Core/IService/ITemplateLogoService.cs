using Microsoft.AspNetCore.Http;
using Relevantz.EEPZ.Common.DTOs.Response;
using Relevantz.EEPZ.Common.Entities;

namespace Relevantz.EEPZ.Core.IService
{
    public interface ITemplateLogoService
    {
        Task<LogoUploadResponseDto> UploadLogoAsync(IFormFile file);

        Task<Templatelogo?> GetLogoByIdAsync(int logoId);

        
    }
}