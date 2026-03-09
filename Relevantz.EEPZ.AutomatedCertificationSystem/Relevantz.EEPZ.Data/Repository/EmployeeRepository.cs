using Microsoft.EntityFrameworkCore;
using Relevantz.EEPZ.Common.DTOs.Response;
using Relevantz.EEPZ.Data.DBContexts;
using Relevantz.EEPZ.Data.IRepository;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Relevantz.EEPZ.Data.Repository
{
    public class EmployeeRepository : IEmployeeRepository
    {
        private readonly ApplicationDbContext _context;

        public EmployeeRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        // Fetch all employees with FirstName and LastName from Userprofile
        public async Task<IEnumerable<EmployeeBasicInfo>> GetAllEmployeesAsync()
        {
            // Joining Employee and Userprofile to retrieve FirstName and LastName
            var employeeList = await _context.Userprofiles
                .Join(
                    _context.Employees, 
                    userProfile => userProfile.EmployeeId, 
                    employee => employee.EmployeeId,
                    (userProfile, employee) => new EmployeeBasicInfo
                    {
                        EmployeeMasterId = employee.EmployeeId,
                        EmployeeId = employee.EmployeeCompanyId,
                        FirstName = userProfile.FirstName,
                        LastName = userProfile.LastName
                    })
                .ToListAsync();

            return employeeList;
        }
        
    }
}