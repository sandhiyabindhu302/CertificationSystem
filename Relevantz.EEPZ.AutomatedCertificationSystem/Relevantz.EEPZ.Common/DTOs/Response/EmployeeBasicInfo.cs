namespace Relevantz.EEPZ.Common.DTOs.Response
{
    public class EmployeeBasicInfo
    {
        public int EmployeeMasterId { get; set; }
        public string EmployeeId { get; set; }  // The employee's company ID (e.g., employee code)
        public string FirstName { get; set; }
        public string LastName { get; set; }
    }
}