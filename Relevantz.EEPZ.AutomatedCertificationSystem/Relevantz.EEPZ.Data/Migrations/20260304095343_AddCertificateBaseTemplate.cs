using System;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Relevantz.EEPZ.Data.Migrations
{
    /// <inheritdoc />
    public partial class AddCertificateBaseTemplate : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_certificatetemplates_TemplateLogo_TemplateLogoId",
                table: "certificatetemplates");

            migrationBuilder.DropPrimaryKey(
                name: "PK_TemplateLogo",
                table: "TemplateLogo");

            migrationBuilder.DropColumn(
                name: "UpdatedAt",
                table: "TemplateLogo");

            migrationBuilder.RenameTable(
                name: "TemplateLogo",
                newName: "templatelogos");

            migrationBuilder.RenameColumn(
                name: "TemplateLogoId",
                table: "certificatetemplates",
                newName: "LogoId");

            migrationBuilder.RenameIndex(
                name: "IX_certificatetemplates_TemplateLogoId",
                table: "certificatetemplates",
                newName: "FK_Template_Logos");

            migrationBuilder.AlterColumn<string>(
                name: "Status",
                table: "employeecertificates",
                type: "varchar(50)",
                maxLength: 50,
                nullable: false,
                defaultValueSql: "'Generated'",
                collation: "utf8mb4_unicode_ci",
                oldClrType: typeof(string),
                oldType: "enum('Generated','Sent','Viewed')",
                oldDefaultValueSql: "'Generated'")
                .Annotation("MySql:CharSet", "utf8mb4")
                .OldAnnotation("MySql:CharSet", "utf8mb4")
                .OldAnnotation("Relational:Collation", "utf8mb4_unicode_ci");

            migrationBuilder.AddColumn<string>(
                name: "AreaOfAchievement",
                table: "employeecertificates",
                type: "varchar(500)",
                maxLength: 500,
                nullable: false,
                defaultValue: "",
                collation: "utf8mb4_unicode_ci")
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.AddColumn<string>(
                name: "DepartmentCode",
                table: "department",
                type: "varchar(20)",
                maxLength: 20,
                nullable: false,
                defaultValue: "",
                collation: "utf8mb4_unicode_ci")
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.AddColumn<string>(
                name: "Description",
                table: "department",
                type: "text",
                nullable: true,
                collation: "utf8mb4_unicode_ci")
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.AddColumn<int>(
                name: "HodEmployeeId",
                table: "department",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "ParentDepartmentId",
                table: "department",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Status",
                table: "department",
                type: "varchar(255)",
                maxLength: 255,
                nullable: true,
                collation: "utf8mb4_unicode_ci")
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.AlterColumn<string>(
                name: "TemplateType",
                table: "certificatetemplates",
                type: "varchar(255)",
                maxLength: 255,
                nullable: false,
                collation: "utf8mb4_unicode_ci",
                oldClrType: typeof(string),
                oldType: "enum('SkillsCompleted','GoalsCompleted','MasteredSkills','RewardsGained','EmployeeOfTheYear')")
                .Annotation("MySql:CharSet", "utf8mb4")
                .OldAnnotation("MySql:CharSet", "utf8mb4")
                .OldAnnotation("Relational:Collation", "utf8mb4_unicode_ci");

            migrationBuilder.AddColumn<string>(
                name: "Achievement",
                table: "certificatetemplates",
                type: "longtext",
                nullable: true,
                collation: "utf8mb4_unicode_ci")
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.AddColumn<string>(
                name: "EmployeeName",
                table: "certificatetemplates",
                type: "longtext",
                nullable: false,
                collation: "utf8mb4_unicode_ci")
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.AlterColumn<string>(
                name: "LogoName",
                table: "templatelogos",
                type: "varchar(255)",
                maxLength: 255,
                nullable: false,
                collation: "utf8mb4_unicode_ci",
                oldClrType: typeof(string),
                oldType: "longtext")
                .Annotation("MySql:CharSet", "utf8mb4")
                .OldAnnotation("MySql:CharSet", "utf8mb4")
                .OldAnnotation("Relational:Collation", "utf8mb4_unicode_ci");

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreatedAt",
                table: "templatelogos",
                type: "datetime",
                nullable: true,
                defaultValueSql: "CURRENT_TIMESTAMP",
                oldClrType: typeof(DateTime),
                oldType: "datetime(6)");

            migrationBuilder.AddPrimaryKey(
                name: "PRIMARY",
                table: "templatelogos",
                column: "LogoId");

            migrationBuilder.CreateTable(
                name: "CertificateBaseTemplates",
                columns: table => new
                {
                    BaseTemplateId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    TemplateName = table.Column<string>(type: "longtext", nullable: false, collation: "utf8mb4_unicode_ci")
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    CssClass = table.Column<string>(type: "longtext", nullable: false, collation: "utf8mb4_unicode_ci")
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    PreviewImage = table.Column<string>(type: "longtext", nullable: false, collation: "utf8mb4_unicode_ci")
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    CreatedAt = table.Column<DateTime>(type: "datetime(6)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CertificateBaseTemplates", x => x.BaseTemplateId);
                })
                .Annotation("MySql:CharSet", "utf8mb4")
                .Annotation("Relational:Collation", "utf8mb4_unicode_ci");

            migrationBuilder.AddForeignKey(
                name: "FK_Template_Logos",
                table: "certificatetemplates",
                column: "LogoId",
                principalTable: "templatelogos",
                principalColumn: "LogoId",
                onDelete: ReferentialAction.SetNull);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Template_Logos",
                table: "certificatetemplates");

            migrationBuilder.DropTable(
                name: "CertificateBaseTemplates");

            migrationBuilder.DropPrimaryKey(
                name: "PRIMARY",
                table: "templatelogos");

            migrationBuilder.DropColumn(
                name: "AreaOfAchievement",
                table: "employeecertificates");

            migrationBuilder.DropColumn(
                name: "DepartmentCode",
                table: "department");

            migrationBuilder.DropColumn(
                name: "Description",
                table: "department");

            migrationBuilder.DropColumn(
                name: "HodEmployeeId",
                table: "department");

            migrationBuilder.DropColumn(
                name: "ParentDepartmentId",
                table: "department");

            migrationBuilder.DropColumn(
                name: "Status",
                table: "department");

            migrationBuilder.DropColumn(
                name: "Achievement",
                table: "certificatetemplates");

            migrationBuilder.DropColumn(
                name: "EmployeeName",
                table: "certificatetemplates");

            migrationBuilder.RenameTable(
                name: "templatelogos",
                newName: "TemplateLogo");

            migrationBuilder.RenameColumn(
                name: "LogoId",
                table: "certificatetemplates",
                newName: "TemplateLogoId");

            migrationBuilder.RenameIndex(
                name: "FK_Template_Logos",
                table: "certificatetemplates",
                newName: "IX_certificatetemplates_TemplateLogoId");

            migrationBuilder.AlterColumn<string>(
                name: "Status",
                table: "employeecertificates",
                type: "enum('Generated','Sent','Viewed')",
                nullable: false,
                defaultValueSql: "'Generated'",
                collation: "utf8mb4_unicode_ci",
                oldClrType: typeof(string),
                oldType: "varchar(50)",
                oldMaxLength: 50,
                oldDefaultValueSql: "'Generated'")
                .Annotation("MySql:CharSet", "utf8mb4")
                .OldAnnotation("MySql:CharSet", "utf8mb4")
                .OldAnnotation("Relational:Collation", "utf8mb4_unicode_ci");

            migrationBuilder.AlterColumn<string>(
                name: "TemplateType",
                table: "certificatetemplates",
                type: "enum('SkillsCompleted','GoalsCompleted','MasteredSkills','RewardsGained','EmployeeOfTheYear')",
                nullable: false,
                collation: "utf8mb4_unicode_ci",
                oldClrType: typeof(string),
                oldType: "varchar(255)",
                oldMaxLength: 255)
                .Annotation("MySql:CharSet", "utf8mb4")
                .OldAnnotation("MySql:CharSet", "utf8mb4")
                .OldAnnotation("Relational:Collation", "utf8mb4_unicode_ci");

            migrationBuilder.AlterColumn<string>(
                name: "LogoName",
                table: "TemplateLogo",
                type: "longtext",
                nullable: false,
                collation: "utf8mb4_unicode_ci",
                oldClrType: typeof(string),
                oldType: "varchar(255)",
                oldMaxLength: 255)
                .Annotation("MySql:CharSet", "utf8mb4")
                .OldAnnotation("MySql:CharSet", "utf8mb4")
                .OldAnnotation("Relational:Collation", "utf8mb4_unicode_ci");

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreatedAt",
                table: "TemplateLogo",
                type: "datetime(6)",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified),
                oldClrType: typeof(DateTime),
                oldType: "datetime",
                oldNullable: true,
                oldDefaultValueSql: "CURRENT_TIMESTAMP");

            migrationBuilder.AddColumn<DateTime>(
                name: "UpdatedAt",
                table: "TemplateLogo",
                type: "datetime(6)",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddPrimaryKey(
                name: "PK_TemplateLogo",
                table: "TemplateLogo",
                column: "LogoId");

            migrationBuilder.AddForeignKey(
                name: "FK_certificatetemplates_TemplateLogo_TemplateLogoId",
                table: "certificatetemplates",
                column: "TemplateLogoId",
                principalTable: "TemplateLogo",
                principalColumn: "LogoId");
        }
    }
}
