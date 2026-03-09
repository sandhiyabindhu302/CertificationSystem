using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Relevantz.EEPZ.Common.Entities;

public partial class CertificateBaseTemplate
{
[Key]
public int BaseTemplateId { get; set; }

    public string TemplateName { get; set; }

    public string CssClass { get; set; }

    public string PreviewImage { get; set; }

    public DateTime CreatedAt { get; set; }
}