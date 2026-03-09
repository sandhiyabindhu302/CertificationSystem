// EmployeeBasicInfo.cs
namespace Relevantz.EEPZ.Common.DTOs.Request
{
    public class EmployeeBasicInfo
    {
        public int EmployeeMasterId { get; set; }
        public string EmployeeId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string RoleName { get; set; }
        public string DepartmentName { get; set; }
    }
}