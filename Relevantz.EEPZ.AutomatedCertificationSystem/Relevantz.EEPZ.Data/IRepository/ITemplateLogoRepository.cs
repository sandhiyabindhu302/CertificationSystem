using Relevantz.EEPZ.Common.Entities;

namespace Relevantz.EEPZ.Data.IRepository
{
    public interface ITemplateLogoRepository
    {
        Task<Templatelogo> AddLogoAsync(Templatelogo logo);

        Task<Templatelogo?> GetLogoByIdAsync(int logoId);
    }
}