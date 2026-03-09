namespace Relevantz.EEPZ.Common.DTOs.Response
{
    public class SkillDto
    {
        public int SkillId { get; set; }
        public string SkillName { get; set; }

        public SkillDto(int skillId, string skillName)
        {
            SkillId = skillId;
            SkillName = skillName;
        }
    }
}