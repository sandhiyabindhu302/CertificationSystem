namespace Relevantz.EEPZ.Common.DTOs.Request
{
    public class NominationRequestDto
    {
        public int ManagerId { get; set; }
        public int EmployeeId { get; set; }
        public int RewardTypeId { get; set; }
        public string Reason { get; set; }
    }
}