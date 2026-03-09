using Relevantz.EEPZ.Common.DTOs.Response;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Relevantz.EEPZ.Core.IService
{
    public interface IEmployeeService
    {
        Task<IEnumerable<EmployeeBasicInfo>> GetAllEmployeesAsync(); 
    }
}