using Relevantz.EEPZ.Common.Entities;

namespace Relevantz.EEPZ.Data.IRepository
{
    public interface IUserProfileRepository
    {
        Task<Userprofile?> GetByEmployeeIdAsync(int employeeId);
    }
}