import React, { useState } from "react";
import { useNavigate } from "react-router-dom";
import Breadcrumb from "../../components/common/Breadcrumb";
import "../../styles/certificate/VerifyCertificate.css";

const VerifyCertificate = () => {
  const [serialNumber, setSerialNumber] = useState(""); 
  const [certificate, setCertificate] = useState(null); 
  const [error, setError] = useState(""); 
  const [loading, setLoading] = useState(false); 

  const navigate = useNavigate();

  const verifyCertificate = async (e) => {
    e.preventDefault();

    setError(""); 
    setCertificate(null); 
    setLoading(true); 
    console.log("Starting certificate verification...");

    try {
      const apiBaseUrl = "http://localhost:5123"; 
      console.log("Using API base URL:", apiBaseUrl);

      if (!serialNumber.trim()) {
        console.error("No serial number provided.");
        setError("Please provide a valid serial number.");
        setLoading(false);
        return;
      }

      const response = await fetch(
        `${apiBaseUrl}/api/certificates/verify/${serialNumber.trim()}`
      );

      if (!response.ok) {
        console.log("Response not OK, status:", response.status);
        throw new Error("Certificate not found");
      }

      const data = await response.json();
      console.log("Fetched certificate data:", data);

      const certificateId = data.certificateId || "N/A";
      const employeeName = data.employeeName || "N/A";
      const areaOfAchievement = data.areaOfAchievement || "N/A";
      const issueDate = data.issueDate
        ? new Date(data.issueDate).toLocaleDateString()
        : "Date not available";

      setCertificate({ certificateId, employeeName, areaOfAchievement, issueDate });
    } catch (err) {
      console.error("Error fetching certificate:", err);
      setError("Certificate not found");
    } finally {
      setLoading(false);
      console.log("Verification process completed.");
    }
  };

  return (
    <>
      <Breadcrumb
        items={[{ label: "Certificate Verification", link: "/employee/dashboard" }]}
      />
      <div className="cert-verify-container">
        <div className="cert-header-section">
          <h1 className="cert-header-title">Certificate Verification</h1>
          <form onSubmit={verifyCertificate} className="cert-verify-form">
            <div className="cert-input-group">
              <label htmlFor="serialNumber" className="cert-label">
                Serial Number
              </label>
              <input
                type="text"
                id="serialNumber"
                placeholder="Enter Serial Number"
                value={serialNumber}
                onChange={(e) => setSerialNumber(e.target.value)}
                required
                className="cert-input"
              />
            </div>
            <button type="submit" disabled={loading} className="cert-submit-btn">
              {loading ? "Verifying..." : "Verify"}
            </button>
          </form>
        </div>

        {error && <div className="cert-error-message">{error}</div>}

        {certificate ? (
          <div className="cert-result-container">
            <h2 className="cert-result-title">Certificate Details</h2>
            <div className="cert-details">
              <p className="cert-result-text">
                This certificate with ID{" "}
                <strong>{certificate.certificateId}</strong> has been issued by
                our organization for the Employee{" "}
                <strong>{certificate.employeeName}</strong>.
              </p>
              <p className="cert-result-text">
                The purpose of this certificate is to recognize the employee's
                achievement in <strong>{certificate.areaOfAchievement}</strong>.
              </p>
              <p className="cert-result-text">
                The certificate was issued on{" "}
                <strong>{certificate.issueDate}</strong>.
              </p>
            </div>
          </div>
        ) : (
          <div className="cert-error-message"></div>
        )}
      </div>
    </>
  );
};

export default VerifyCertificate;
