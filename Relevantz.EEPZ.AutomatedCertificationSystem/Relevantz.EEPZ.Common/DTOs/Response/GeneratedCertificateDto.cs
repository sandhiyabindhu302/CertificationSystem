using System;

namespace Relevantz.EEPZ.Common.DTOs.Response
{
    public class GeneratedCertificateDto
    {
        public int CertificateId { get; set; }

        public string CertificateFilePath { get; set; } = "";

        public DateTime IssueDate { get; set; }

        public byte[]? PdfContent { get; set; }

        public GeneratedCertificateDto() { }

        public GeneratedCertificateDto(
            int certificateId,
            string certificateFilePath,
            DateTime issueDate,
            byte[]? pdfContent)
        {
            CertificateId = certificateId;
            CertificateFilePath = certificateFilePath;
            IssueDate = issueDate;
            PdfContent = pdfContent;
        }
    }
}