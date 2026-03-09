using System;
using System.Collections.Generic;

namespace Relevantz.EEPZ.Common.Entities;

public partial class Certificatecustomization
{
    public int CustomizationId { get; set; }

    public int TemplateId { get; set; }

    public string? ColorScheme { get; set; }

    public string? FontStyle { get; set; }

    public string Elements { get; set; } = null!;

    public int ModifiedBy { get; set; }

    public DateTime? ModifiedAt { get; set; }

    public virtual Certificatetemplate Template { get; set; } = null!;
}
