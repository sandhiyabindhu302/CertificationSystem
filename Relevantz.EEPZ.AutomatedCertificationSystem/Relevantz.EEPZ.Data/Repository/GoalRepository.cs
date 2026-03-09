using Relevantz.EEPZ.Common.Entities;
using Relevantz.EEPZ.Common.Entities;
using Relevantz.EEPZ.Data.DBContexts;
using Relevantz.EEPZ.Data.IRepository;
using Microsoft.EntityFrameworkCore;
using Relevantz.EEPZ.Common.DTOs.Response;


namespace Relevantz.EEPZ.Data.Repository
{
    public class GoalRepository : IGoalRepository
    {
        private readonly ApplicationDbContext _context;

        public GoalRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        // Fetch all goals from the database
        public async Task<IEnumerable<GoalDto>> GetAllGoalsAsync()
        {
            var goals = await _context.Goals
                .Select(g => new GoalDto
                {
                    GoalId = g.GoalId,
                    GoalTitle = g.GoalTitle,
                    GoalDescription = g.GoalDescription
                })
                .ToListAsync();

            return goals;
        }
    }
}