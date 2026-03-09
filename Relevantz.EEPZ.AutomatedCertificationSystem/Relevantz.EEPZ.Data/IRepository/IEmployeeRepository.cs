using Relevantz.EEPZ.Common.DTOs.Response;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Relevantz.EEPZ.Data.IRepository
{
    public interface IEmployeeRepository
    {
        Task<IEnumerable<EmployeeBasicInfo>> GetAllEmployeesAsync();  


        
    }
}