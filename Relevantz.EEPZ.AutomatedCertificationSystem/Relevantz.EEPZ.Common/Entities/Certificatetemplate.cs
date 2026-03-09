using System;
using System.Collections.Generic;

namespace Relevantz.EEPZ.Common.Entities;

public partial class Certificatetemplate
{
    public int TemplateId { get; set; }

    public string TemplateName { get; set; } = null!;

    public string TemplateType { get; set; } = null!;

    public string TemplateLayout { get; set; } = null!;

    public int LogoId { get; set; }

    public DateTime? CreatedAt { get; set; }

    public DateTime? UpdatedAt { get; set; }

    public int? EmployeeId { get; set; }

    public string EmployeeName { get; set; } = null!;

    public string? Achievement { get; set; }

    public bool IsFinalized { get; set; } = false;

    public virtual ICollection<Certificatecustomization> Certificatecustomizations { get; set; } = new List<Certificatecustomization>();

    public virtual ICollection<Employeecertificate> Employeecertificates { get; set; } = new List<Employeecertificate>();

    public virtual Templatelogo? Logo { get; set; }
}