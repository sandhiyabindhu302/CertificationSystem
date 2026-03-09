using Microsoft.AspNetCore.Http;
using Relevantz.EEPZ.Common.DTOs.Response;
using Relevantz.EEPZ.Common.Entities;
using Relevantz.EEPZ.Core.IService;
using Relevantz.EEPZ.Data.IRepository;

namespace Relevantz.EEPZ.Core.Service
{
    public class TemplateLogoService : ITemplateLogoService
    {
        private readonly ITemplateLogoRepository _logoRepository;

        public TemplateLogoService(ITemplateLogoRepository logoRepository)
        {
            _logoRepository = logoRepository;
        }

        public async Task<LogoUploadResponseDto> UploadLogoAsync(IFormFile file)
        {
            if (file == null || file.Length == 0)
                throw new Exception("No file uploaded");

            using var memoryStream = new MemoryStream();
            await file.CopyToAsync(memoryStream);

            var logo = new Templatelogo
            {
                LogoName = file.FileName,
                LogoImage = memoryStream.ToArray(),
                CreatedAt = DateTime.UtcNow
            };

            var savedLogo = await _logoRepository.AddLogoAsync(logo);

            return new LogoUploadResponseDto
            {
                LogoId = savedLogo.LogoId,
                LogoName = savedLogo.LogoName
            };
        }

         public async Task<Templatelogo?> GetLogoByIdAsync(int logoId)
        {
            return await _logoRepository.GetLogoByIdAsync(logoId);
        }

        
    }
}