import React from "react";
import { useNavigate } from "react-router-dom";

const HRDashboard = () => {
  const navigate = useNavigate();

  return (
    <>
      <div
        style={{
          minHeight: "100vh",
          backgroundColor: "#f1f5f9",
          padding: "3rem",
        }}
      >

        <h1
          style={{
            fontSize: "2.8rem",
            color: "#1e293b",
            textAlign: "center",
            marginBottom: "3rem",
            padding: "2rem",
            background: "white",
            borderRadius: "16px",
            boxShadow: "0 10px 25px rgba(0,0,0,0.1)",
            border: "1px solid #e2e8f0",
          }}
        >
         Recognition & Certification Workspace
        </h1>

        <div
          style={{
            display: "grid",
            gridTemplateColumns: "repeat(auto-fit, minmax(350px, 1fr))",
            gap: "2rem",
            maxWidth: "1100px",
            margin: "0 auto",
          }}
        >

          <div
            onClick={() => navigate("/certificate/base-templates")}
            style={{
              cursor: "pointer",
              padding: "3rem",
              background: "linear-gradient(135deg,#f59e0b,#d97706)",
              color: "white",
              borderRadius: "16px",
              textAlign: "center",
              boxShadow: "0 10px 20px rgba(0,0,0,0.15)",
              transition: "transform 0.2s",
            }}
          >
            <h2 style={{ fontSize: "1.8rem", marginBottom: "1rem" }}>
              Choose Template
            </h2>

            <p style={{ fontSize: "1.1rem", opacity: 0.9 }}>
              Select a certificate design template before customization
            </p>
          </div>

          <div
            onClick={() => navigate("/certificate/templates")}
            style={{
              cursor: "pointer",
              padding: "3rem",
              background: "linear-gradient(135deg,#10b981,#059669)",
              color: "white",
              borderRadius: "16px",
              textAlign: "center",
              boxShadow: "0 10px 20px rgba(0,0,0,0.15)",
              transition: "transform 0.2s",
            }}
          >
            <h2 style={{ fontSize: "1.8rem", marginBottom: "1rem" }}>
              View Templates
            </h2>

            <p style={{ fontSize: "1.1rem", opacity: 0.9 }}>
              View, edit, and manage all saved certificate templates
            </p>
          </div>
        </div>
      </div>
    </>
  );
};

export default HRDashboard;
