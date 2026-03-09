import React, { useState, useEffect } from "react";
import { useNavigate, useLocation } from "react-router-dom";
import Breadcrumb from "../../components/common/Breadcrumb";
import "../../styles/certificate/VerifyCertificate.css";

const VerifyCertificate = () => {
  const [serialNumber, setSerialNumber] = useState(""); // State for serial number input
  const [certificate, setCertificate] = useState(null); // State for fetched certificate data
  const [error, setError] = useState(""); // State for error message
  const [loading, setLoading] = useState(false); // State for loading indicator

  const navigate = useNavigate();
  const location = useLocation();

  // Extract serial number from the URL query parameters
  useEffect(() => {
    const queryParams = new URLSearchParams(location.search);
    const serial = queryParams.get("serialNumber");
    if (serial) {
      setSerialNumber(serial); // Pre-fill the serial number input if it exists in the URL
    }
  }, [location]);

  // Fetch certificate details from the backend
  const verifyCertificate = async (e) => {
    e.preventDefault();

    setError(""); // Clear previous errors
    setCertificate(null); // Reset certificate data
    setLoading(true); // Show loading indicator

    try {
      const response = await fetch(
        `http://192.168.29.82:5123/api/certificates/verify/${serialNumber}`, // API call
      );

      if (!response.ok) {
        throw new Error("Certificate not found");
      }

      const data = await response.json(); // Parse the response as JSON
      console.log(data); // Log the response data to see what is returned
      setCertificate(data); // Set the fetched certificate data
    } catch (err) {
      console.error(err); // Log any errors to the console for debugging
      setError("Certificate not found"); // Set error message if certificate is not found
    } finally {
      setLoading(false); // Hide loading indicator
    }
  };

  return (
    <>
      {/* Breadcrumb Navigation */}
      <Breadcrumb
        items={[{ label: "Certificate Verification", link: "/employee/dashboard" }]}
      />

      <div className="cert-verify-container">
        {/* Certificate Verification Form */}
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

        {/* Display Error Message */}
        {error && <div className="cert-error-message">{error}</div>}

        {/* Display Certificate Details */}
        {certificate && (
          <div className="cert-result-container">
            <h2 className="cert-result-title">Certificate Details</h2>
            <div className="cert-details">
              <p className="cert-result-text">
                This certificate with ID{" "}
                <strong>{certificate.certificateId}</strong> has been issued by
                our organization for the Employee{" "}
                <strong>{certificate.employeeName}</strong>. {/* Change EmployeeName to employeeName */}
              </p>
              <p className="cert-result-text">
                The purpose of this certificate is to recognize the employee's
                achievement in <strong>{certificate.areaOfAchievement}</strong>.
              </p>
              <p className="cert-result-text">
                The certificate was issued on{" "}
                <strong>{new Date(certificate.issueDate).toLocaleDateString()}</strong>.
              </p>
            </div>
          </div>
        )}
      </div>
    </>
  );
};

export default VerifyCertificate;