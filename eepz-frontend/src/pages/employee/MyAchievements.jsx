import { useEffect, useState } from "react";
import axios from "axios";
import Breadcrumb from "../../components/common/Breadcrumb";
import "../../styles/certificate/MyAchievements.css";

const MyAchievements = () => {

  const [certificate, setCertificate] = useState(null);
  const [loading, setLoading] = useState(true);

  const employeeId = localStorage.getItem("employeeId");
  const token = localStorage.getItem("token");

  console.log("=========== MyAchievements Component Loaded ===========");
  console.log("EmployeeId from localStorage:", employeeId);
  console.log("Token from localStorage:", token);

  useEffect(() => {
    console.log("useEffect triggered");

    if (employeeId) {
      console.log("EmployeeId exists → calling fetchCertificate()");
      fetchCertificate();
    } else {
      console.error("EmployeeId NOT found in localStorage");
      setLoading(false);
    }

  }, [employeeId]);

  const fetchCertificate = async () => {

    console.log("=========== fetchCertificate() START ===========");
    console.log("EmployeeId:", employeeId);

    try {

      console.log("Calling API:");
      console.log(`http://localhost:5123/api/certificates/employee/${employeeId}`);

      const response = await axios.get(
        `http://localhost:5123/api/certificates/employee/${employeeId}`,
        {
          headers: {
            Authorization: `Bearer ${token}`,
          },
        }
      );

      console.log("========== API RESPONSE RECEIVED ==========");
      console.log("Full Response:", response);
      console.log("Response Data:", response.data);

      if (response.data) {
        console.log("Certificate FOUND → updating state");
        setCertificate(response.data);
      } else {
        console.warn("Response returned but certificate data empty");
        setCertificate(null);
      }

    } catch (error) {

      console.error("========== API ERROR ==========");

      if (error.response) {
        console.error("Status:", error.response.status);
        console.error("Error Data:", error.response.data);
      } else {
        console.error("Network/Error:", error);
      }

      if (error.response && error.response.status === 404) {
        console.warn("Certificate not found for employee");
        setCertificate(null);
      }

    } finally {

      console.log("fetchCertificate finished");
      setLoading(false);

    }
  };

  const downloadCertificate = async () => {

    console.log("=========== Download Button Clicked ===========");

    if (!employeeId) {
      alert("Employee not logged in. Please login again.");
      console.error("Download failed: employeeId missing");
      return;
    }

    try {

      console.log("Calling Download API:");
      console.log(`http://localhost:5123/api/certificates/download/${employeeId}`);

      const response = await axios.get(
        `http://localhost:5123/api/certificates/download/${employeeId}`,
        {
          headers: {
            Authorization: `Bearer ${token}`,
          },
          responseType: "blob",
        }
      );

      console.log("Download API Response:", response);

      const url = window.URL.createObjectURL(new Blob([response.data]));

      const link = document.createElement("a");
      link.href = url;
      link.download = "certificate.pdf";

      document.body.appendChild(link);
      link.click();
      link.remove();

      console.log("Certificate download triggered successfully");

    } catch (error) {

      console.error("Download failed:", error);
      alert("Failed to download certificate");

    }
  };

  return (
    <div className="hr-dashboard-container">

      <Breadcrumb
        items={[
          { label: "My Achievements", link: "/employee/dashboard" },
        ]}
      />

      {/* Loading */}
      {loading && (
        <div className="no-data-message">
          Loading certificate...
        </div>
      )}

      {/* No Certificate */}
      {!loading && certificate === null && (
        <div className="no-data-message">
          No certificates generated yet
        </div>
      )}

      {/* Certificate Exists */}
      {!loading && certificate && (
        <div className="dashboard-card">

          <div className="card-header-dark">
            <h3>My Achievements</h3>
          </div>

          <div className="card-body" style={{ textAlign: "center" }}>

            <p>
              Issue Date:{" "}
              {new Date(
                certificate.issueDate || certificate.IssueDate
              ).toLocaleDateString()}
            </p>

            <button
              onClick={downloadCertificate}
              className="emp-rewards-toggle-btn"
            >
              Download Certificate
            </button>

          </div>

        </div>
      )}

    </div>
  );
};

export default MyAchievements;