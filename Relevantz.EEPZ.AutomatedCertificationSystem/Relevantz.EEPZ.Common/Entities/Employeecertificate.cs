using System;
using System.Collections.Generic;

namespace Relevantz.EEPZ.Common.Entities;

public partial class Employeecertificate
{
    public int CertificateId { get; set; }

    public int EmployeeId { get; set; }

    public int TemplateId { get; set; }

    public string AreaOfAchievement { get; set; } = null!;

    public DateTime? IssueDate { get; set; }

    public string CertificateFilePath { get; set; } = null!;

    public string Status { get; set; } = null!;

     public string SerialNumber { get; set; } 

     public string EmployeeName { get; set; }

    public virtual ICollection<Certificatenotification> Certificatenotifications { get; set; } = new List<Certificatenotification>();

    public virtual Employee Employee { get; set; } = null!;

    public virtual Certificatetemplate Template { get; set; } = null!;
}
