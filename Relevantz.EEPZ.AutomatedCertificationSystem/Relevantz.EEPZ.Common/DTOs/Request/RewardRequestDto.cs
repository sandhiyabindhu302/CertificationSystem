namespace Relevantz.EEPZ.Common.DTOs.Request
{
    public class RewardRequestDto
    {
        public string RewardCategory { get; set; }
        public string RewardName { get; set; }
        public string Description { get; set; }
        public bool IsActive { get; set; }
        public int CreatedBy { get; set; }
    }
}