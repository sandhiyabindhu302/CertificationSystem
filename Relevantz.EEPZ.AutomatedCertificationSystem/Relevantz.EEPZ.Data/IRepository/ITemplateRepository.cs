using Relevantz.EEPZ.Common.Entities;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Relevantz.EEPZ.Data.IRepository
{
    public interface ITemplateRepository
    {
        Task AddAsync(Certificatetemplate template);
        Task<Certificatetemplate?> GetByIdAsync(int templateId);
        Task UpdateAsync(Certificatetemplate template);

        Task<IEnumerable<Certificatetemplate>> GetAllAsync();

        Task DeleteAsync(Certificatetemplate template);


    }
}