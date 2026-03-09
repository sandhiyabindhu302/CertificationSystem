using Relevantz.EEPZ.Common.Entities;
using Relevantz.EEPZ.Data.DBContexts;
using Relevantz.EEPZ.Data.IRepository;
using Microsoft.EntityFrameworkCore;
using Relevantz.EEPZ.Common.DTOs.Response;

namespace Relevantz.EEPZ.Data.Repository
{
    public class RewardRepository : IRewardRepository
    {
        private readonly ApplicationDbContext _context;

        public RewardRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        // Get All Active Rewards
        public async Task<IEnumerable<RewardResponseDto>> GetAllRewardsAsync()
        {
            var rewards = await _context.Rewardtypes
                .Where(r => r.IsActive.HasValue && r.IsActive.Value)  // Handling nullable bool
                .Select(r => new RewardResponseDto
                {
                    RewardTypeId = r.RewardTypeId,
                    RewardCategory = r.RewardCategory,
                    RewardName = r.RewardName,
                    Description = r.Description,
                    IsActive = r.IsActive.Value,  // Safely accessing nullable bool
                    CreatedAt = r.CreatedAt
                })
                .ToListAsync();

            return rewards;
        }
    }
}