using Relevantz.EEPZ.Common.Entities;
using Relevantz.EEPZ.Data.DBContexts;
using Relevantz.EEPZ.Data.IRepository;
using Microsoft.EntityFrameworkCore;
using System.Linq;
using System.Threading.Tasks;

namespace Relevantz.EEPZ.Data.Repository
{
    public class CertificateRepository : ICertificateRepository
    {
        private readonly ApplicationDbContext _context;

        public CertificateRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task AddAsync(Employeecertificate certificate)
        {
            await _context.Employeecertificates.AddAsync(certificate);
            await _context.SaveChangesAsync();
        }

        public async Task<Employeecertificate?> GetBySerialNumberAsync(string serialNumber)
        {
            return await _context.Employeecertificates
                .Where(c => c.SerialNumber == serialNumber)  // Compare serial number as string
                .FirstOrDefaultAsync();
        }

        public async Task<Employeecertificate?> GetByEmployeeIdAsync(int employeeId)
        {
            return await _context.Employeecertificates
                .Where(c => c.EmployeeId == employeeId)
                .OrderByDescending(c => c.IssueDate)
                .FirstOrDefaultAsync();
        }

        // UPDATE EXISTING CERTIFICATE
        public async Task UpdateAsync(Employeecertificate certificate)
        {
            _context.Employeecertificates.Update(certificate);  // Ensure the entity is updated
            await _context.SaveChangesAsync();  // Commit changes to DB
        }

        public async Task DeleteAsync(Certificatetemplate template)
        {
            _context.Certificatetemplates.Remove(template);
            await _context.SaveChangesAsync();
        }
    }
}