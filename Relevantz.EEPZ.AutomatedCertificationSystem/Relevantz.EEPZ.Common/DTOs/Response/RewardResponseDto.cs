namespace Relevantz.EEPZ.Common.DTOs.Response
{
    public class RewardResponseDto
    {
        public int RewardTypeId { get; set; }
        public string RewardCategory { get; set; }
        public string RewardName { get; set; }
        public string Description { get; set; }
        public bool IsActive { get; set; }
        public DateTime CreatedAt { get; set; }
    }
}