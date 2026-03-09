using Relevantz.EEPZ.Common.DTOs.Response;
using System.Collections.Generic;
using System.Threading.Tasks;
using Relevantz.EEPZ.Data.DBContexts;


namespace Relevantz.EEPZ.Data.IRepository
{
    public interface IRewardRepository
    {
        Task<IEnumerable<RewardResponseDto>> GetAllRewardsAsync();  // Method to fetch all rewards
    }
}