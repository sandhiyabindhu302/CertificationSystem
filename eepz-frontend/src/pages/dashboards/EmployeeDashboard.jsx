import { useNavigate } from "react-router-dom";
import Breadcrumb from "../../components/common/Breadcrumb";

const EmployeeDashboard = () => {

  const navigate = useNavigate();

  const goToAchievements = () => {
    navigate("/employee/my-achievements");
  };

  const goToVerifyCertificate = () => {
    navigate("/employee/verify-certificate");
  };

  return (
    <div className="ada-dashboard">

      <Breadcrumb items={[{ label: "Employee Dashboard" }]} />

      <div style={{
        textAlign: 'center',
        padding: '4rem 2rem',
        background: 'linear-gradient(135deg, #667eea 0%, #764ba2 100%)',
        borderRadius: '16px',
        color: 'white',
        margin: '2rem 0'
      }}>
        <h1 style={{ fontSize: '1.5rem', opacity: 0.9 }}>
          Track your achievements, goals, and certificates
        </h1>
      </div>

      <div style={{
        display: "grid",
        gridTemplateColumns: "repeat(auto-fit, minmax(280px, 1fr))",
        gap: "1.5rem",
        marginTop: "2rem"
      }}>

        <div
          onClick={goToAchievements}
          style={{
            background: "white",
            padding: "2rem",
            borderRadius: "12px",
            cursor: "pointer",
            border: "1px solid #e2e8f0",
            textAlign: "center",
            transition: "0.3s",
            boxShadow: "0 2px 6px rgba(0,0,0,0.08)"
          }}
        >
          <div style={{ fontSize: "3rem", marginBottom: "1rem" }}>
          </div>
          <h3>My Achievements</h3>
          <p style={{ color: "#64748b", fontSize: "14px" }}>
            View and download your certificates
          </p>
        </div>

        <div
          onClick={goToVerifyCertificate}
          style={{
            background: "white",
            padding: "2rem",
            borderRadius: "12px",
            cursor: "pointer",
            border: "1px solid #e2e8f0",
            textAlign: "center",
            transition: "0.3s",
            boxShadow: "0 2px 6px rgba(0,0,0,0.08)"
          }}
        >
          <div style={{ fontSize: "3rem", marginBottom: "1rem" }}>
          </div>
          <h3>Verify Certificate</h3>
          <p style={{ color: "#64748b", fontSize: "14px" }}>
            Verify the authenticity of a certificate
          </p>
        </div>

      </div>
    </div>
  );
};

export default EmployeeDashboard;