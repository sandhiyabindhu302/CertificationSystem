using Relevantz.EEPZ.Common.Entities;
using Relevantz.EEPZ.Data.DBContexts;
using Relevantz.EEPZ.Data.IRepository;
using Microsoft.EntityFrameworkCore;

namespace Relevantz.EEPZ.Data.Repository
{
    public class BaseTemplateRepository : IBaseTemplateRepository
    {
        private readonly ApplicationDbContext _context;

        public BaseTemplateRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task AddAsync(CertificateBaseTemplate template)
        {
            await _context.CertificateBaseTemplates.AddAsync(template);
            await _context.SaveChangesAsync();
        }

        public async Task<List<CertificateBaseTemplate>> GetAllAsync()
        {
            return await _context.CertificateBaseTemplates.ToListAsync();
        }

         public async Task<CertificateBaseTemplate?> GetByIdAsync(int baseTemplateId)
        {
            return await _context.CertificateBaseTemplates
                .FirstOrDefaultAsync(t => t.BaseTemplateId == baseTemplateId);
        }

        // Delete Base Template
        public async Task DeleteAsync(CertificateBaseTemplate template)
        {
            _context.CertificateBaseTemplates.Remove(template);
            await _context.SaveChangesAsync();
        }
    }
}