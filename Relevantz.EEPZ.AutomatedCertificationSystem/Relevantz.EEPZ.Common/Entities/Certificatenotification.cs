using System;
using System.Collections.Generic;

namespace Relevantz.EEPZ.Common.Entities;

public partial class Certificatenotification
{
    public int NotificationId { get; set; }

    public int EmployeeId { get; set; }

    public int CertificateId { get; set; }

    public string NotificationMessage { get; set; } = null!;

    public DateTime? SentAt { get; set; }

    public bool? IsRead { get; set; }

    public virtual Employeecertificate Certificate { get; set; } = null!;

    public virtual Employee Employee { get; set; } = null!;
}
