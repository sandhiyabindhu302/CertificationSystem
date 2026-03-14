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

  // Read from localStorage on mount
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

  const formatIssueDate = (value) => {
    if (!value) return "—";
    const d = new Date(value);
    return Number.isNaN(d.getTime()) ? "—" : d.toLocaleDateString();
  };

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
        setError(""); // not a visible error; just means none yet
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

  /**
   * Preview: fetch the PDF as a blob (to include auth header), create a Blob URL,
   * and open it in a NEW TAB. We delay revoking the URL to avoid breaking the new tab.
   */
  const openPreviewInNewTab = useCallback(async () => {
    console.log("=========== Preview (new tab) Clicked ===========");

    if (!employeeId) {
      alert("Employee not logged in. Please login again.");
      console.error("Preview failed: employeeId missing");
      return;
    }

    try {
      // Optional: show a very quick temp window to avoid popup blockers
      // Some browsers block window.open if not directly in a user gesture.
      const tempWin = window.open("", "_blank");

      const response = await axios.get(
        `http://localhost:5123/api/certificates/download/${employeeId}`,
        {
          headers: token ? { Authorization: `Bearer ${token}` } : {},
          responseType: "blob",
        }
      );

      const contentType = response.headers?.["content-type"] || "application/pdf";
      const blob = new Blob([response.data], { type: contentType });
      const previewUrl = URL.createObjectURL(blob);

      if (tempWin) {
        // If temp window exists, redirect it to the blob URL
        tempWin.location = previewUrl;
      } else {
        // Fallback: open the URL now (may be blocked if not user gesture)
        window.open(previewUrl, "_blank", "noopener,noreferrer");
      }

      // Revoke after some delay to allow the browser tab to load it fully.
      // (If revoked too early, the new tab may display an error.)
      setTimeout(() => {
        try {
          URL.revokeObjectURL(previewUrl);
          console.log("Preview URL revoked");
        } catch (_) {
          // ignore
        }
      }, 60_000); // 60s is safe; tune as needed
    } catch (error) {
      console.error("Preview failed:", error);
      if (error.response?.status === 404) {
        alert("Certificate not found to preview.");
      } else if (error.response?.status === 401) {
        alert("Session expired. Please login again.");
      } else {
        alert("Failed to open preview. Please try again.");
      }
    }
  }, [employeeId, token]);

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

      // Try to extract filename from Content-Disposition
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

  const issueDate = useMemo(() => {
    const dateValue = certificate?.issueDate ?? certificate?.IssueDate;
    return formatIssueDate(dateValue);
  }, [certificate]);

  return (
    <div className="hr-dashboard-container">
      <div className="hr-dashboard-breadcrumbs">
        <Breadcrumb items={[{ label: "My Achievements", link: "/employee/dashboard" }]} />
      </div>

      {/* Loading */}
      {loading && <div className="no-data-message">Loading certificate...</div>}

      {/* Error */}
      {!loading && !!error && (
        <div className="no-data-message" role="alert" style={{ color: "#b00020" }}>
          {error}{" "}
          <button
            className="emp-rewards-toggle-btn"
            onClick={fetchCertificate}
            style={{ marginLeft: 8 }}
          >
            Retry
          </button>
        </div>
      )}

      {/* No Certificate */}
      {!loading && !error && certificate === null && (
        <div className="no-data-message">No certificates generated yet</div>
      )}

      {/* Certificate Exists */}
      {!loading && !error && certificate && (
        <div className="dashboard-card">
          <div className="card-header-dark">
            <h3>My Achievements</h3>
          </div>

          <div className="card-body" style={{ textAlign: "center" }}>
            <p>Issue Date: {issueDate}</p>

            <div style={{ display: "flex", gap: 12, justifyContent: "center" }}>
              <button onClick={openPreviewInNewTab} className="emp-rewards-toggle-btn">
                Preview
              </button>
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