using Relevantz.EEPZ.Common.Entities;

namespace Relevantz.EEPZ.Data.IRepository
{
    public interface IBaseTemplateRepository
    {
        Task AddAsync(CertificateBaseTemplate template);

        Task<List<CertificateBaseTemplate>> GetAllAsync();

          Task<CertificateBaseTemplate?> GetByIdAsync(int baseTemplateId);

        // Method to delete a base template from the database
        Task DeleteAsync(CertificateBaseTemplate template);
    }
}