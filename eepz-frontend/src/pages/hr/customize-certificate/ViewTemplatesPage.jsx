import React, { useEffect, useState } from "react";
import certificateService from "../../../services/certificate/certificateService";
import { useNavigate } from "react-router-dom";
import "../../../styles/certificate/ViewTemplatesPage.css";
import Breadcrumb from "../../../components/common/Breadcrumb";
import { toast, ToastContainer } from "react-toastify"; // <-- Importing toast and ToastContainer
import "react-toastify/dist/ReactToastify.css"; // <-- Importing toast styles

const ViewTemplatesPage = () => {
  const [templates, setTemplates] = useState([]);
  const [currentPage, setCurrentPage] = useState(1);
  const [showConfirmModal, setShowConfirmModal] = useState(false); // Modal visibility state
  const [templateToDelete, setTemplateToDelete] = useState(null); // Template to delete
  const navigate = useNavigate();
  const templatesPerPage = 1;

  const fetchTemplates = async () => {
    try {
      const data = await certificateService.getAllTemplates();
      const templateList = Array.isArray(data) ? data : data?.data || [];
      setTemplates(templateList);
      setCurrentPage(1);
    } catch (error) {
      console.error("Error fetching templates:", error);
    }
  };

  useEffect(() => {
    fetchTemplates();
  }, []);

  const totalPages = Math.ceil(templates.length / templatesPerPage);
  const startIndex = (currentPage - 1) * templatesPerPage;
  const currentTemplates = templates.slice(startIndex, startIndex + templatesPerPage);

  const nextPage = () => {
    if (currentPage < totalPages) setCurrentPage((prev) => prev + 1);
  };

  const prevPage = () => {
    if (currentPage > 1) setCurrentPage((prev) => prev - 1);
  };

  const handleEdit = (template) => {
    navigate("/hr/dashboard/customize-certificate", {
      state: { editTemplate: template },
    });
  };

  // Trigger the confirmation modal
  const handleDeleteClick = (templateId) => {
    setTemplateToDelete(templateId); // Set the template to delete
    setShowConfirmModal(true); // Show the confirmation modal
  };

  // Handle the delete action
  const handleDelete = async () => {
    if (!templateToDelete) return;

    try {
      await certificateService.deleteTemplate(templateToDelete);
      setTemplates((prev) => prev.filter((t) => t.templateId !== templateToDelete));
      toast.success("Template deleted successfully!"); // <-- Success toast for deletion
    } catch (error) {
      console.error("Delete error:", error);
      toast.error("Failed to delete the template."); // <-- Error toast for failure
    } finally {
      setShowConfirmModal(false); // Close the modal
      setTemplateToDelete(null); // Reset the template to delete
    }
  };

  // Close the modal without deleting
  const handleCancelDelete = () => {
    setShowConfirmModal(false); // Close modal if canceled
    setTemplateToDelete(null); // Reset template to delete
  };

  const handleFinalize = async (template) => {
    try {
      await certificateService.finalizeTemplate(template.templateId); // Fix here, ensure templateId is passed correctly
      toast.success("Certificate generated successfully!"); // <-- Success toast for finalization
    } catch (error) {
      console.error("Finalize error:", error);
      toast.error("Failed to generate certificate due to an unexpected error."); // <-- Error toast for failure
    }
  };

  return (
    <div className="templates-page">
      <ToastContainer /> {/* ToastContainer to display toast notifications */}
      <Breadcrumb items={[{ label: "Home", path: "/dashboard" }]} />

      {currentTemplates.length === 0 && (
        <p className="no-template">No templates available</p>
      )}

      {currentTemplates.map((template) => {
        let layout = {};
        try {
          layout = template.templateLayout ? JSON.parse(template.templateLayout) : {};
        } catch (error) {
          console.error("Layout parse error:", error);
          layout = {};
        }

        return (
          <div key={template.templateId} className="template-card-view">
            <div
              className="certificate-preview"
              style={{
                width: layout?.canvas?.width || 900,
                height: layout?.canvas?.height || 500,
                position: "relative",
                backgroundImage: layout?.canvas?.background
                  ? `url(${
                      layout.canvas.background.startsWith("http")
                        ? layout.canvas.background
                        : `http://localhost:5123${layout.canvas.background}`
                    })`
                  : "none",
                backgroundSize: "cover",
                backgroundPosition: "center",
              }}
            >
              {/* LOGO */}
              {layout.logo?.enabled && template.logoId && (
                <img
                  src={`http://localhost:5123/api/certificates/logo/${template.logoId}`}
                  alt="logo"
                  style={{
                    position: "absolute",
                    left: layout.logo?.position?.x || 350,
                    top: layout.logo?.position?.y || 20,
                    width: layout.logo?.size || 120,
                  }}
                />
              )}

              {/* TITLE */}
              {layout.title?.enabled && (
                <h1
                  style={{
                    position: "absolute",
                    left: layout.title?.position?.x || 250,
                    top: layout.title?.position?.y || 140,
                    fontSize: layout.title?.fontSize || 30,
                  }}
                >
                  {layout.title?.text || template.templateName}
                </h1>
              )}

              {/* TYPE */}
              {layout.type?.enabled && (
                <p
                  style={{
                    position: "absolute",
                    left: layout.type?.position?.x || 300,
                    top: layout.type?.position?.y || 210,
                    fontSize: layout.type?.fontSize || 22,
                  }}
                >
                  {layout.type?.text || template.templateType}
                </p>
              )}

              {/* NAME */}
              {layout.name?.enabled && (
                <p
                  style={{
                    position: "absolute",
                    left: layout.name?.position?.x || 320,
                    top: layout.name?.position?.y || 270,
                    fontSize: layout.name?.fontSize || 24,
                  }}
                >
                  <strong>{layout.name?.text || template.employeeName}</strong>
                </p>
              )}

              {/* ACHIEVEMENT */}
              {layout.achievement?.enabled && (
                <p
                  style={{
                    position: "absolute",
                    left: layout.achievement?.position?.x || 320,
                    top: layout.achievement?.position?.y || 320,
                    fontSize: layout.achievement?.fontSize || 20,
                  }}
                >
                  {layout.achievement?.text || template.achievement}
                </p>
              )}
            </div>

            <div className="template-actions">
              <button className="edit-btn" onClick={() => handleEdit(template)}>
                Edit
              </button>
              <button
                className="delete-btn"
                onClick={() => handleDeleteClick(template.templateId)} // <-- Trigger custom delete modal
              >
                Delete
              </button>
              <button
                className="finalize-btn"
                onClick={() => handleFinalize(template)} // Finalize and generate certificate
              >
                Send
              </button>
            </div>
          </div>
        );
      })}

      {/* Pagination */}
      <div className="page-navigation">
        <button
          className="arrow-btn arrow-left"
          disabled={currentPage === 1}
          onClick={prevPage}
        >
          &#8592;
        </button>

        <button
          className="arrow-btn arrow-right"
          disabled={currentPage === totalPages}
          onClick={nextPage}
        >
          &#8594;
        </button>
      </div>

      {/* Custom Delete Confirmation Modal */}
      {showConfirmModal && (
        <div className="confirm-modal">
          <div className="confirm-modal-content">
            <p>Are you sure you want to delete this template?</p>
            <button onClick={handleDelete}>Yes</button>
            <button onClick={handleCancelDelete}>No</button>
          </div>
        </div>
      )}
    </div>
  );
};

export default ViewTemplatesPage;