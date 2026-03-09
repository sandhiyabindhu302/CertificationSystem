using Relevantz.EEPZ.Core.IService;
using Relevantz.EEPZ.Data.IRepository;
using Relevantz.EEPZ.Common.DTOs.Response;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Relevantz.EEPZ.Core.Service
{
    public class EmployeeService : IEmployeeService
    {
        private readonly IEmployeeRepository _employeeRepository;

        public EmployeeService(IEmployeeRepository employeeRepository)
        {
            _employeeRepository = employeeRepository;
        }

        // Get all employees (FirstName, LastName, etc.)
        public async Task<IEnumerable<EmployeeBasicInfo>> GetAllEmployeesAsync()
        {
            return await _employeeRepository.GetAllEmployeesAsync();  // Call repository method
        }
    }
}