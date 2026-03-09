global using Serilog;
global using Serilog.Events;
global using Relevantz.EEPZ.Common.Entities;
global using Relevantz.EEPZ.Common.DTOs.Request;
global using Relevantz.EEPZ.Common.DTOs.Response;
global using Relevantz.EEPZ.Core.IService;
global using Relevantz.EEPZ.Data.IRepository;
global using Relevantz.EEPZ.Core.Service;
global using Relevantz.EEPZ.Data.Repository;
global using Microsoft.EntityFrameworkCore;
global using Microsoft.AspNetCore.Authentication.JwtBearer;
global using Microsoft.IdentityModel.Tokens;
global using Microsoft.OpenApi.Models;
global using Relevantz.EEPZ.Data.DBContexts;  

using System.Net;
using System.IdentityModel.Tokens.Jwt;
using System.Text;

JwtSecurityTokenHandler.DefaultInboundClaimTypeMap.Clear();
JwtSecurityTokenHandler.DefaultOutboundClaimTypeMap.Clear();

Log.Logger = new LoggerConfiguration()
    .MinimumLevel.Override("Microsoft", LogEventLevel.Information)
    .Enrich.FromLogContext()
    .WriteTo.Console()
    .CreateBootstrapLogger();

try
{
    Log.Information("Starting EEPZ Certificate Management Backend Application");


    var builder = WebApplication.CreateBuilder(args);

       builder.WebHost.ConfigureKestrel(serverOptions =>
{
    serverOptions.Listen(IPAddress.Any, 5123);  // Listen on port 5123 and all network interfaces
});

    builder.Host.UseSerilog((context, services, configuration) => configuration
        .ReadFrom.Configuration(context.Configuration)
        .ReadFrom.Services(services)
        .Enrich.FromLogContext()
        .Enrich.WithProperty("Application", "EEPZ.ProjectManagement.API")
        .Filter.ByExcluding(logEvent =>
            logEvent.Properties.Any(p =>
                p.Key.ToLower().Contains("password") ||
                p.Key.ToLower().Contains("token") ||
                p.Key.ToLower().Contains("authorization") ||
                p.Key.ToLower().Contains("secret"))));

    // CONTROLLERS
    builder.Services.AddControllers();
    builder.Services.AddEndpointsApiExplorer();

    // SWAGGER + JWT
    builder.Services.AddSwaggerGen(options =>
    {
        options.SwaggerDoc("v1", new OpenApiInfo
        {
            Title = "EEPZ Automated Certification System API",
            Version = "v1",
            Description = "Automated Certification System4 Module API",
        });

        options.AddSecurityDefinition("Bearer", new OpenApiSecurityScheme
        {
            Name = "Authorization",
            Type = SecuritySchemeType.Http,
            Scheme = "Bearer",
            BearerFormat = "JWT",
            In = ParameterLocation.Header,
            Description = "Enter Bearer token"
        });

        options.AddSecurityRequirement(new OpenApiSecurityRequirement
        {
            {
                new OpenApiSecurityScheme
                {
                    Reference = new OpenApiReference
                    {
                        Type = ReferenceType.SecurityScheme,
                        Id = "Bearer"
                    }
                },
                Array.Empty<string>()
            }
        });
    });

    // JWT AUTH
    var jwtSettings = builder.Configuration.GetSection("JwtSettings");
    var secretKey = jwtSettings["SecretKey"] ?? throw new InvalidOperationException("JWT SecretKey missing");

    builder.Services.AddAuthentication(JwtBearerDefaults.AuthenticationScheme)
        .AddJwtBearer(options =>
        {
            options.TokenValidationParameters = new TokenValidationParameters
            {
                ValidateIssuer = true,
                ValidateAudience = true,
                ValidateLifetime = true,
                ValidateIssuerSigningKey = true,
                ValidIssuer = jwtSettings["Issuer"],
                ValidAudience = jwtSettings["Audience"],
                IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(secretKey)),
                ClockSkew = TimeSpan.Zero,

                NameClaimType = "sub",
                RoleClaimType = "http://schemas.microsoft.com/ws/2008/06/identity/claims/role"
            };
        });

    builder.Services.AddAuthorization(options =>
    {
        options.AddPolicy("HROnly", policy =>
            policy.RequireRole("HR"));

        options.AddPolicy("ManagerOnly", policy =>
            policy.RequireRole("Manager"));

        options.AddPolicy("EmployeeOnly", policy =>
            policy.RequireRole("Employee"));

        options.AddPolicy("HRorManager", policy =>
            policy.RequireRole("HR", "Manager"));

        options.AddPolicy("HRorEmployee", policy =>
            policy.RequireRole("HR", "Employee"));
    });

    builder.Services.AddHttpContextAccessor();
    builder.Services.AddMemoryCache();

 builder.Services.AddCors(options =>
{
    options.AddPolicy("FrontendOnly", policy =>
        policy.WithOrigins(
            "http://localhost:5173",
            "http://localhost:3007",
            "http://192.168.29.82:3007"
        )
        .AllowAnyHeader()
        .AllowAnyMethod()
        .AllowCredentials());
});

builder.Services.AddScoped<ICertificateService, CertificateService>();  
builder.Services.AddScoped<ICertificateRepository, CertificateRepository>(); 
builder.Services.AddScoped<ITemplateRepository, TemplateRepository>();  
builder.Services.AddScoped<IUserProfileRepository, UserProfileRepository>();  
builder.Services.AddScoped<ISkillRepository, SkillRepository>(); 
builder.Services.AddScoped<IGoalRepository, GoalRepository>(); 
builder.Services.AddScoped<IEmployeeService, EmployeeService>();
builder.Services.AddScoped<IEmployeeRepository, EmployeeRepository>();
builder.Services.AddScoped<IRewardRepository, RewardRepository>(); 
builder.Services.AddScoped<ITemplateLogoService, TemplateLogoService>();
builder.Services.AddScoped<ITemplateLogoRepository, TemplateLogoRepository>();
builder.Services.AddScoped<IBaseTemplateRepository, BaseTemplateRepository>();

    builder.Services.AddDbContext<ApplicationDbContext>(options =>
        options.UseMySql(builder.Configuration.GetConnectionString("DefaultConnection"), 
            new MySqlServerVersion(new Version(8, 0, 25))));

    var app = builder.Build();

    if (app.Environment.IsDevelopment())
    {
        app.UseSwagger();
        app.UseSwaggerUI();
    }

    app.UseSerilogRequestLogging(opts =>
    {
        opts.EnrichDiagnosticContext = (diagnosticContext, httpContext) =>
        {
            diagnosticContext.Set("RequestHost", httpContext.Request.Host.Value);
            diagnosticContext.Set("RequestScheme", httpContext.Request.Scheme);
            diagnosticContext.Set("UserAgent", httpContext.Request.Headers["User-Agent"].ToString());
            diagnosticContext.Set("ClientIP", httpContext.Connection.RemoteIpAddress?.ToString());
        };
    });

    app.UseHttpsRedirection();
    app.UseStaticFiles();
    app.UseCors("FrontendOnly");
    app.UseAuthentication();
    app.UseAuthorization();

    app.MapControllers();

    Log.Information("Automated Certification System API started successfully");
    app.Run();
}
catch (Exception ex)
{
    Log.Fatal(ex, "Application terminated unexpectedly");
}
finally
{
    Log.CloseAndFlush();
}