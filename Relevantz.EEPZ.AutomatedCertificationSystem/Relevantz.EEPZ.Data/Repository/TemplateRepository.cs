using Relevantz.EEPZ.Common.Entities;
using Relevantz.EEPZ.Data.DBContexts;
using Relevantz.EEPZ.Data.IRepository;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Relevantz.EEPZ.Data.Repository
{
    public class TemplateRepository : ITemplateRepository
    {
        private readonly ApplicationDbContext _context;

        public TemplateRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        // Fetch template by ID
        public async Task<Certificatetemplate?> GetByIdAsync(int templateId)
        {
            return await _context.Certificatetemplates
                .FirstOrDefaultAsync(t => t.TemplateId == templateId);
        }

        // Add a new template
        public async Task AddAsync(Certificatetemplate template)
        {
            await _context.Certificatetemplates.AddAsync(template);
            await _context.SaveChangesAsync();
        }

        // Update an existing template
        public async Task UpdateAsync(Certificatetemplate template)
        {
            _context.Certificatetemplates.Update(template);
            await _context.SaveChangesAsync();
        }

        // Fetch all templates
        public async Task<IEnumerable<Certificatetemplate>> GetAllAsync()
        {
            return await _context.Certificatetemplates.ToListAsync();
        }

        public async Task DeleteAsync(Certificatetemplate template)
        {
            _context.Certificatetemplates.Remove(template);
            await _context.SaveChangesAsync();
        }
    }
}