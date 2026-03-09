using System.Collections.Generic;
using System.Threading.Tasks;
using Relevantz.EEPZ.Common.DTOs.Response;
using Relevantz.EEPZ.Common.DTOs.Request;
using Relevantz.EEPZ.Common.Entities;

namespace Relevantz.EEPZ.Core.IService
{
    public interface ICertificateService
    {
        Task<CertificateTemplateDto> CreateCertificateTemplateAsync(CertificateTemplateRequestDto request);

        Task<CertificateTemplateDto> UpdateCertificateTemplateAsync(int templateId, CertificateTemplateRequestDto request);

        Task<CertificateTemplateDto> GetCertificateTemplateByIdAsync(int templateId);

        Task<IEnumerable<CertificateTemplateDto>> GetAllCertificateTemplatesAsync();

        Task<GeneratedCertificateDto> GenerateCertificateAsync(GenerateCertificateRequestDto request);

        Task<GeneratedCertificateDto> GetEmployeeCertificateAsync(int employeeId);

        Task<IEnumerable<MasterSkillDto>> GetAllSkillsAsync();

        Task<IEnumerable<GoalDto>> GetAllGoalsAsync();

        Task<IEnumerable<RewardResponseDto>> GetAllRewardsAsync();

        Task<bool> DeleteCertificateTemplateAsync(int templateId);

        Task<BaseTemplateDto> UploadBaseTemplateAsync(BaseTemplateRequestDto request);

        Task<IEnumerable<BaseTemplateDto>> GetBaseTemplatesAsync();

        Task<GeneratedCertificateDto?> FinalizeTemplateAsync(int templateId);

         Task<bool> DeleteBaseTemplateAsync(int baseTemplateId);
    }
}