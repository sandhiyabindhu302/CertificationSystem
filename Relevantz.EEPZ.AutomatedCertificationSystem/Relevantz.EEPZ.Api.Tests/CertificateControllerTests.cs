using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Moq;
using NUnit.Framework;
using Relevantz.EEPZ.Api.Controllers;
using Relevantz.EEPZ.Core.IService;
using Relevantz.EEPZ.Common.DTOs.Request;
using Relevantz.EEPZ.Common.DTOs.Response;
using Relevantz.EEPZ.Common.Entities;
using System.Collections.Generic;
using System.Threading.Tasks;
using Relevantz.EEPZ.Data.IRepository;
using System;
using System.IO;

namespace Relevantz.EEPZ.Tests
{
    [TestFixture]
    public class CertificateControllerTests
    {
        private Mock<ICertificateService> certificateService;
        private Mock<ITemplateLogoService> templateLogoService;
        private Mock<ICertificateRepository> certificateRepository;
        private CertificateController certificateController;

        [SetUp]
        public void Setup()
        {
            certificateService = new Mock<ICertificateService>();
            templateLogoService = new Mock<ITemplateLogoService>();
            certificateRepository = new Mock<ICertificateRepository>();

            certificateController = new CertificateController(
                certificateService.Object,
                templateLogoService.Object,
                certificateRepository.Object);
        }

        [Test]
        public async Task CreateTemplate_Success()
        {
            certificateService.Setup(x => x.CreateCertificateTemplateAsync(It.IsAny<CertificateTemplateRequestDto>()))
                .ReturnsAsync(new CertificateTemplateDto());

            var result = await certificateController.CreateTemplate(new CertificateTemplateRequestDto());

            Assert.That(result, Is.InstanceOf<ObjectResult>());
        }

        [Test]
        public async Task UpdateTemplate_Success()
        {
            certificateService.Setup(x => x.UpdateCertificateTemplateAsync(1, It.IsAny<CertificateTemplateRequestDto>()))
                .ReturnsAsync(new CertificateTemplateDto());

            var result = await certificateController.UpdateTemplate(1, new CertificateTemplateRequestDto());

            Assert.That(result, Is.InstanceOf<ObjectResult>());
        }

        [Test]
        public async Task UpdateTemplate_NotFound()
        {
            certificateService.Setup(x => x.UpdateCertificateTemplateAsync(1, It.IsAny<CertificateTemplateRequestDto>()))
                .ReturnsAsync((CertificateTemplateDto)null);

            var result = await certificateController.UpdateTemplate(1, new CertificateTemplateRequestDto());

            Assert.That(result, Is.InstanceOf<NotFoundResult>());
        }

        [Test]
        public async Task GetAllTemplates_Success()
        {
            certificateService.Setup(x => x.GetAllCertificateTemplatesAsync())
                .ReturnsAsync(new List<CertificateTemplateDto>());

            var result = await certificateController.GetAllTemplates();

            Assert.That(result, Is.InstanceOf<ObjectResult>());
        }

        [Test]
        public async Task GetAllTemplates_EmptyList()
        {
            certificateService.Setup(x => x.GetAllCertificateTemplatesAsync())
                .ReturnsAsync(new List<CertificateTemplateDto>());

            var result = await certificateController.GetAllTemplates();
            var objectResult = result as ObjectResult;

            Assert.That(((List<CertificateTemplateDto>)objectResult.Value).Count, Is.EqualTo(0));
        }

        [Test]
        public async Task GetTemplateById_Success()
        {
            certificateService.Setup(x => x.GetCertificateTemplateByIdAsync(1))
                .ReturnsAsync(new CertificateTemplateDto());

            var result = await certificateController.GetTemplateById(1);

            Assert.That(result, Is.InstanceOf<ObjectResult>());
        }

        [Test]
        public async Task DeleteTemplate_Success()
        {
            certificateService.Setup(x => x.DeleteCertificateTemplateAsync(1))
                .ReturnsAsync(true);

            var result = await certificateController.DeleteTemplate(1);

            Assert.That(result, Is.InstanceOf<ObjectResult>());
        }

        [Test]
        public async Task DeleteTemplate_Failure()
        {
            certificateService.Setup(x => x.DeleteCertificateTemplateAsync(1))
                .ReturnsAsync(false);

            var result = await certificateController.DeleteTemplate(1);

            Assert.That(result, Is.InstanceOf<NotFoundResult>());
        }

        [Test]
        public async Task UploadBaseTemplate_Success()
        {
            certificateService.Setup(x => x.UploadBaseTemplateAsync(It.IsAny<BaseTemplateRequestDto>()))
                .ReturnsAsync(new BaseTemplateDto());

            var result = await certificateController.UploadBaseTemplate(new BaseTemplateRequestDto());

            Assert.That(result, Is.InstanceOf<ObjectResult>());
        }

        [Test]
        public async Task GetBaseTemplates_Success()
        {
            certificateService.Setup(x => x.GetBaseTemplatesAsync())
                .ReturnsAsync(new List<BaseTemplateDto>());

            var result = await certificateController.GetBaseTemplates();

            Assert.That(result, Is.InstanceOf<ObjectResult>());
        }

        [Test]
        public async Task GetBaseTemplates_Empty()
        {
            certificateService.Setup(x => x.GetBaseTemplatesAsync())
                .ReturnsAsync(new List<BaseTemplateDto>());

            var result = await certificateController.GetBaseTemplates();
            var objectResult = result as ObjectResult;

            Assert.That(((List<BaseTemplateDto>)objectResult.Value).Count, Is.EqualTo(0));
        }

        [Test]
        public async Task GenerateCertificate_Success()
        {
            certificateService.Setup(x => x.GenerateCertificateAsync(It.IsAny<GenerateCertificateRequestDto>()))
                .ReturnsAsync(new GeneratedCertificateDto());

            var result = await certificateController.GenerateCertificate(new GenerateCertificateRequestDto());

            Assert.That(result, Is.InstanceOf<ObjectResult>());
        }

        [Test]
        public async Task GenerateCertificate_Failure()
        {
            certificateService.Setup(x => x.GenerateCertificateAsync(It.IsAny<GenerateCertificateRequestDto>()))
                .ReturnsAsync((GeneratedCertificateDto)null);

            var result = await certificateController.GenerateCertificate(new GenerateCertificateRequestDto());

            Assert.That(result, Is.InstanceOf<NotFoundResult>());
        }

        [Test]
        public async Task GetEmployeeCertificate_Success()
        {
            certificateService.Setup(x => x.GetEmployeeCertificateAsync(1))
                .ReturnsAsync(new GeneratedCertificateDto());

            var result = await certificateController.GetEmployeeCertificate(1);

            Assert.That(result, Is.InstanceOf<ObjectResult>());
        }

        [Test]
        public async Task GetEmployeeCertificate_NotFound()
        {
            certificateService.Setup(x => x.GetEmployeeCertificateAsync(1))
                .ReturnsAsync((GeneratedCertificateDto)null);

            var result = await certificateController.GetEmployeeCertificate(1);

            Assert.That(result, Is.InstanceOf<NotFoundResult>());
        }

        [Test]
        public async Task DownloadCertificate_Success()
        {
            var tempFile = Path.GetTempFileName();
            await File.WriteAllTextAsync(tempFile, "dummy content");

            certificateService.Setup(x => x.GetEmployeeCertificateAsync(1))
                .ReturnsAsync(new GeneratedCertificateDto { CertificateFilePath = tempFile });

            var result = await certificateController.DownloadCertificate(1);

            Assert.That(result, Is.InstanceOf<FileContentResult>());
        }

        [Test]
        public async Task DownloadCertificate_NoCertificate()
        {
            certificateService.Setup(x => x.GetEmployeeCertificateAsync(1))
                .ReturnsAsync((GeneratedCertificateDto)null);

            var result = await certificateController.DownloadCertificate(1);

            Assert.That(result, Is.InstanceOf<NotFoundResult>());
        }


        [Test]
        public async Task CreateTemplate_ReturnsOk_WhenServiceSucceeds()
        {
            // Arrange
            var dto = new CertificateTemplateDto();
            certificateService.Setup(x => x.CreateCertificateTemplateAsync(It.IsAny<CertificateTemplateRequestDto>()))
                .ReturnsAsync(dto);

            // Act
            var result = await certificateController.CreateTemplate(new CertificateTemplateRequestDto());

            // Assert
            var objectResult = result as ObjectResult;
            Assert.That(objectResult, Is.Not.Null);
            Assert.That(objectResult.Value, Is.EqualTo(dto));
        }

        [Test]
        public async Task GetAllTemplates_ReturnsList_WhenServiceHasData()
        {
            // Arrange
            var templates = new List<CertificateTemplateDto> { new CertificateTemplateDto() };
            certificateService.Setup(x => x.GetAllCertificateTemplatesAsync())
                .ReturnsAsync(templates);

            // Act
            var result = await certificateController.GetAllTemplates();

            // Assert
            var objectResult = result as ObjectResult;
            Assert.That(objectResult, Is.Not.Null);
            Assert.That(((List<CertificateTemplateDto>)objectResult.Value).Count, Is.EqualTo(1));
        }

        [Test]
        public async Task DownloadCertificate_ReturnsFileContentResult_WhenFileExists()
        {
            // Arrange: create a real temp file
            var tempFile = Path.GetTempFileName();
            await File.WriteAllTextAsync(tempFile, "dummy content");

            certificateService.Setup(x => x.GetEmployeeCertificateAsync(1))
                .ReturnsAsync(new GeneratedCertificateDto { CertificateFilePath = tempFile });

            // Act
            var result = await certificateController.DownloadCertificate(1);

            // Assert
            Assert.That(result, Is.InstanceOf<FileContentResult>());
        }


    }
}
