using System;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Relevantz.EEPZ.Data.Migrations
{
    /// <inheritdoc />
    public partial class AddTemplateLogoColumn : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "TemplateLogoId",
                table: "certificatetemplates",
                type: "int",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "TemplateLogo",
                columns: table => new
                {
                    LogoId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    LogoName = table.Column<string>(type: "longtext", nullable: false, collation: "utf8mb4_unicode_ci")
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    LogoImage = table.Column<byte[]>(type: "longblob", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime(6)", nullable: false),
                    UpdatedAt = table.Column<DateTime>(type: "datetime(6)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TemplateLogo", x => x.LogoId);
                })
                .Annotation("MySql:CharSet", "utf8mb4")
                .Annotation("Relational:Collation", "utf8mb4_unicode_ci");

            migrationBuilder.CreateIndex(
                name: "IX_certificatetemplates_TemplateLogoId",
                table: "certificatetemplates",
                column: "TemplateLogoId");

            migrationBuilder.AddForeignKey(
                name: "FK_certificatetemplates_TemplateLogo_TemplateLogoId",
                table: "certificatetemplates",
                column: "TemplateLogoId",
                principalTable: "TemplateLogo",
                principalColumn: "LogoId");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_certificatetemplates_TemplateLogo_TemplateLogoId",
                table: "certificatetemplates");

            migrationBuilder.DropTable(
                name: "TemplateLogo");

            migrationBuilder.DropIndex(
                name: "IX_certificatetemplates_TemplateLogoId",
                table: "certificatetemplates");

            migrationBuilder.DropColumn(
                name: "TemplateLogoId",
                table: "certificatetemplates");
        }
    }
}
