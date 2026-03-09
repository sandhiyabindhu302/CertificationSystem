using Relevantz.EEPZ.Common.DTOs.Response;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Relevantz.EEPZ.Data.IRepository
{
    public interface ISkillRepository
    {
        Task<IEnumerable<MasterSkillDto>> GetAllSkillsAsync();  // Updated method name to fetch all skills
    }
}