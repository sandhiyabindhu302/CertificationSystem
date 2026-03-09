using System.Threading.Tasks;
using Relevantz.EEPZ.Common.Entities;

namespace Relevantz.EEPZ.Data.IRepository
{
    public interface ICertificateRepository
    {
        Task AddAsync(Employeecertificate certificate);

        Task<Employeecertificate?> GetByEmployeeIdAsync(int employeeId);

    Task<Employeecertificate?> GetBySerialNumberAsync(string serialNumber);  // Ensure it's expecting a string // Accept string serial number
    }
}