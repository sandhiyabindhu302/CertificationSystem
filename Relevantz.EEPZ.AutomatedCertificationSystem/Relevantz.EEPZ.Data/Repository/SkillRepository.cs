using Microsoft.EntityFrameworkCore;
using Relevantz.EEPZ.Common.DTOs.Response;
using Relevantz.EEPZ.Common.Entities;
using Relevantz.EEPZ.Data.DBContexts;
using Relevantz.EEPZ.Data.IRepository;

namespace Relevantz.EEPZ.Data.Repository
{
    public class SkillRepository : ISkillRepository
    {
        private readonly ApplicationDbContext _context;

        public SkillRepository(ApplicationDbContext context)
        {
            _context = context;
        }

       // Get All Skills
public async Task<IEnumerable<MasterSkillDto>> GetAllSkillsAsync()
{
    var skills = await _context.MasterSkills.ToListAsync();  // Fetch all skills from the database
    return skills.Select(s => new MasterSkillDto
    {
        SkillId = s.SkillId,
        SkillName = s.SkillName,
        Description = s.Description
    });
}

// Get All Goals
public async Task<IEnumerable<GoalDto>> GetAllGoalsAsync()
{
    var goals = await _context.Goals.ToListAsync();  // Fetch all goals from the database
    return goals.Select(g => new GoalDto
    {
        GoalId = g.GoalId,
        GoalTitle = g.GoalTitle,
        GoalDescription = g.GoalDescription
    });
}
    }
}