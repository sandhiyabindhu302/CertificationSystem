import { useEffect, useMemo, useState, useCallback } from "react";
import axios from "axios";
import Breadcrumb from "../../components/common/Breadcrumb";
import "../../styles/certificate/MyAchievements.css";

const MyAchievements = () => {
  const [certificate, setCertificate] = useState(null);
  const [loading, setLoading] = useState(true);
  const [downloading, setDownloading] = useState(false);
  const [error, setError] = useState("");

  const [employeeId, setEmployeeId] = useState(null);
  const [token, setToken] = useState(null);

  const [imageUrl, setImageUrl] = useState(null);

  useEffect(() => {
    try {
      const storedEmployeeId = localStorage.getItem("employeeId");
      const storedToken = localStorage.getItem("token");
      setEmployeeId(storedEmployeeId);
      setToken(storedToken);

      console.log("=========== MyAchievements Component Loaded ===========");
      console.log("EmployeeId from localStorage:", storedEmployeeId);
      console.log("Token present:", !!storedToken);
    } catch (e) {
      console.error("Failed to read from localStorage:", e);
    }
  }, []);

  const fetchCertificate = useCallback(async () => {
    console.log("Fetching certificate...");

    if (!employeeId) {
      console.error("EmployeeId NOT found in localStorage");
      setError("Employee not logged in. Please login again.");
      setLoading(false);
      return;
    }

    setLoading(true);
    setError("");

    try {
      const response = await axios.get(
        `http://localhost:5123/api/certificates/employee/${employeeId}`,
        {
          headers: token ? { Authorization: `Bearer ${token}` } : {},
        }
      );

      const data = response.data;
      const cert = Array.isArray(data) ? data[0] ?? null : data ?? null;

      if (cert) {
        setCertificate(cert);
      } else {
        setCertificate(null);
      }
    } catch (err) {
      if (err.response?.status === 404) {
        setCertificate(null);
        setError("");
      } else if (err.response?.status === 401) {
        setError("Your session has expired. Please login again.");
      } else {
        setError("Failed to load certificate. Please try again.");
      }
    } finally {
      setLoading(false);
    }
  }, [employeeId, token]);

  useEffect(() => {
    fetchCertificate();
  }, [fetchCertificate]);

  useEffect(() => {
    const fetchPreview = async () => {
      if (!employeeId) {
        console.error("Employee not logged in.");
        return;
      }

      try {
        const response = await axios.get(
          `http://localhost:5123/api/certificates/download/${employeeId}`,
          {
            headers: token ? { Authorization: `Bearer ${token}` } : {},
            responseType: "blob",
          }
        );

        const contentType = response.headers?.["content-type"] || "";
        if (!contentType.includes("pdf")) {
          alert("Failed to load file. Invalid format.");
          return;
        }

        const blob = new Blob([response.data], { type: contentType });
        const previewUrl = URL.createObjectURL(blob);

        setImageUrl(previewUrl);
      } catch (error) {
        console.error("Failed to fetch preview:", error);
        alert("Failed to open preview. Please try again.");
      }
    };

    if (certificate) {
      fetchPreview();
    }
  }, [certificate, employeeId, token]);

  const formatIssueDate = (value) => {
    if (!value) return "—";
    const d = new Date(value);
    return Number.isNaN(d.getTime()) ? "—" : d.toLocaleDateString();
  };

  const issueDate = useMemo(() => {
    const dateValue = certificate?.issueDate ?? certificate?.IssueDate;
    return formatIssueDate(dateValue);
  }, [certificate]);

  const downloadCertificate = useCallback(async () => {
    console.log("=========== Download Button Clicked ===========");

    if (!employeeId) {
      alert("Employee not logged in. Please login again.");
      console.error("Download failed: employeeId missing");
      return;
    }

    try {
      setDownloading(true);

      const response = await axios.get(
        `http://localhost:5123/api/certificates/download/${employeeId}`,
        {
          headers: token ? { Authorization: `Bearer ${token}` } : {},
          responseType: "blob",
        }
      );

      const disposition = response.headers?.["content-disposition"] || "";
      let filename = "certificate.pdf";
      const match = disposition.match(/filename\*?=(?:UTF-8''|")?([^\";]+)/i);
      if (match && match[1]) {
        filename = decodeURIComponent(match[1].replace(/\"/g, ""));
      }

      const blob = new Blob([response.data], {
        type: response.headers?.["content-type"] || "application/pdf",
      });
      const url = window.URL.createObjectURL(blob);

      const link = document.createElement("a");
      link.href = url;
      link.download = filename;
      document.body.appendChild(link);
      link.click();
      document.body.removeChild(link);
      window.URL.revokeObjectURL(url);

      console.log("Certificate download triggered successfully");
    } catch (error) {
      console.error("Download failed:", error);
      if (error.response?.status === 404) {
        alert("Certificate not found to download.");
      } else if (error.response?.status === 401) {
        alert("Session expired. Please login again.");
      } else {
        alert("Failed to download certificate. Please try again.");
      }
    } finally {
      setDownloading(false);
    }
  }, [employeeId, token]);

  return (
    <div className="hr-dashboard-container">
      <div className="hr-dashboard-breadcrumbs">
        <Breadcrumb items={[{ label: "My Achievements", link: "/employee/dashboard" }]} />
      </div>

      {loading && <div className="no-data-message">Loading certificate...</div>}

      {!loading && !!error && (
        <div className="no-data-message" role="alert" style={{ color: "#b00020" }}>
          {error}
          <button
            className="emp-rewards-toggle-btn"
            onClick={fetchCertificate}
            style={{ marginLeft: 8 }}
          >
            Retry
          </button>
        </div>
      )}

      {!loading && !error && certificate === null && (
        <div className="no-data-message">No certificates generated yet</div>
      )}

      {!loading && !error && certificate && (
        <div className="dashboard-card">
          <div className="card-header-dark">
            <h3>My Achievements</h3>
          </div>

          <div className="card-body" style={{ textAlign: "center" }}>
            <p>Issue Date: {issueDate}</p>

            {imageUrl && (
              <div className="certificate-preview-container">
                <iframe
                  src={imageUrl}
                  style={{ height: "100%", width: "100%" }}
                  title="Certificate Preview"
                />
              </div>
            )}

            <div style={{ display: "flex", justifyContent: "center", marginTop: "12px" }}>
              <button
                onClick={downloadCertificate}
                className="emp-rewards-toggle-btn"
                disabled={downloading}
                aria-busy={downloading}
              >
                {downloading ? "Downloading..." : "Download"}
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
};

export default MyAchievements;