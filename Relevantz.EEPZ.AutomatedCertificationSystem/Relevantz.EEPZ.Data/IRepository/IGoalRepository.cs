using Relevantz.EEPZ.Common.DTOs.Response;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Relevantz.EEPZ.Data.IRepository
{
    public interface IGoalRepository
    {
        Task<IEnumerable<GoalDto>> GetAllGoalsAsync();  // Updated method name to fetch all goals
    }
}