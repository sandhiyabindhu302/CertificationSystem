using System;
using System.Collections.Generic;

namespace Relevantz.EEPZ.Common.Entities;

public partial class Templatelogo
{
    public int LogoId { get; set; }

    public string LogoName { get; set; } = null!;

    public byte[] LogoImage { get; set; } = null!;

    public DateTime? CreatedAt { get; set; }

    public virtual ICollection<Certificatetemplate> Certificatetemplates { get; set; } = new List<Certificatetemplate>();
}
