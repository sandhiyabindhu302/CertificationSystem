using Relevantz.EEPZ.Common.Entities;
using Relevantz.EEPZ.Data.DBContexts;
using Relevantz.EEPZ.Data.IRepository;
using Microsoft.EntityFrameworkCore;

namespace Relevantz.EEPZ.Data.Repository
{
    public class TemplateLogoRepository : ITemplateLogoRepository
    {
        private readonly ApplicationDbContext _context;

        public TemplateLogoRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<Templatelogo> AddLogoAsync(Templatelogo logo)
        {
            await _context.Templatelogos.AddAsync(logo);
            await _context.SaveChangesAsync();

            return logo;
        }

         public async Task<Templatelogo?> GetLogoByIdAsync(int logoId)
        {
            return await _context.Templatelogos
                .FirstOrDefaultAsync(l => l.LogoId == logoId);
        }
    }
}