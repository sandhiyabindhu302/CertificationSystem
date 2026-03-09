using Microsoft.AspNetCore.Mvc;
using Relevantz.EEPZ.Core.IService;
using Relevantz.EEPZ.Common.DTOs.Response;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Relevantz.EEPZ.Api.Controllers
{
    [ApiController]
    [Route("api/employees")]
    public class EmployeeController : ControllerBase
    {
        private readonly IEmployeeService _employeeService;

        public EmployeeController(IEmployeeService employeeService)
        {
            _employeeService = employeeService;
        }

       [HttpGet("employees")]
        public async Task<IActionResult> GetAllEmployees()
        {
            var employees = await _employeeService.GetAllEmployeesAsync();
            return Ok(employees);  // Return list of all employees
        }
    }
}