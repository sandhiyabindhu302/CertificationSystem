import React, { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import { Home } from "lucide-react"; // Correct Home icon import from lucide-react
import certificateService from "../../../services/certificate/certificateService";
import "../../../styles/certificate/BaseTemplatesPage.css";
import { toast, ToastContainer } from "react-toastify"; // Importing toast and ToastContainer
import "react-toastify/dist/ReactToastify.css"; // Importing toast styles

const BaseTemplatesPage = () => {
  const [templates, setTemplates] = useState([]);
  const [templateName, setTemplateName] = useState("");
  const [imageFile, setImageFile] = useState(null);
  const [currentIndex, setCurrentIndex] = useState(0);
  const navigate = useNavigate();

  useEffect(() => {
    fetchTemplates();
  }, []);

  const fetchTemplates = async () => {
    try {
      const data = await certificateService.getBaseTemplates();
      setTemplates(Array.isArray(data) ? data : data?.data || []);
    } catch (error) {
      // console.error("Error fetching base templates:", error);
      // toast.error("Failed to fetch templates."); // Display error toast if fetching fails
    }
  };

  const handleUpload = async () => {
    if (!templateName || !imageFile) {
      toast.error("Please enter template name and select image"); // Display error toast for missing fields
      return;
    }

    try {
      await certificateService.uploadBaseTemplate(templateName, imageFile);
      toast.success("Template uploaded successfully"); // Display success toast on successful upload
      setTemplateName("");
      setImageFile(null);
      fetchTemplates(); // Reload templates after upload
    } catch (error) {
      console.error("Upload error", error);
      toast.error("Failed to upload template"); // Display error toast if upload fails
    }
  };

  const handleDeleteTemplate = async (templateId) => {
    try {
      await certificateService.deleteBaseTemplate(templateId);
      toast.success("Template deleted successfully"); // Display success toast on successful delete

      const updatedTemplates = templates.filter(
        (t) => t.baseTemplateId !== templateId,
      );

      setTemplates(updatedTemplates);

      if (currentIndex >= updatedTemplates.length) {
        setCurrentIndex(Math.max(updatedTemplates.length - 1, 0));
      }
    } catch (error) {
      console.error("Error deleting template:", error);
      toast.error("Failed to delete template"); // Display error toast if delete fails
    }
  };

  const handleSelectTemplate = (template) => {
    navigate("/hr/customize-certificate", {
      state: { baseTemplate: template },
    });
  };

  const nextSlide = () => {
    if (currentIndex < templates.length - 1) {
      setCurrentIndex(currentIndex + 1);
    }
  };

  const prevSlide = () => {
    if (currentIndex > 0) {
      setCurrentIndex(currentIndex - 1);
    }
  };

  return (
    <div className="base-template-page">
      <ToastContainer /> {/* ToastContainer to display toast notifications */}
      {/* Custom Breadcrumb */}
      <nav className="custom-breadcrumb-nav" aria-label="Breadcrumb">
        <div className="custom-breadcrumb-content">
          <button
            className="custom-breadcrumb-home-btn"
            onClick={() => navigate("/dashboard")}
            title="Go to Dashboard"
            aria-label="Home"
          >
            <Home size={18} /> {/* Home Icon from Lucide */}
          </button>
          <span className="custom-breadcrumb-separator">/</span>
          <span className="custom-breadcrumb-current">Choose Template</span>
        </div>
      </nav>
      <h1 className="template-title">Choose Template</h1>
      <div className="upload-container">
        <input
          type="text"
          placeholder="Template Name"
          value={templateName}
          onChange={(e) => setTemplateName(e.target.value)}
        />
        <input
          type="file"
          className="upload-button"
          accept="image/*"
          onChange={(e) => setImageFile(e.target.files[0])}
        />
        <button onClick={handleUpload}>Upload Template</button>
      </div>
      {/* Template Viewer */}
      {templates.length > 0 && (
        <div className="slider-container">
          <button
            className="nav-arrow left"
            onClick={prevSlide}
            disabled={currentIndex === 0}
          >
            ❮
          </button>

          <div
            className="template-card"
            onMouseEnter={(e) => e.target.classList.add("hovered")}
            onMouseLeave={(e) => e.target.classList.remove("hovered")}
          >
            <img
              src={`http://localhost:5123${templates[currentIndex].previewImage}`}
              alt={templates[currentIndex].templateName}
              className="template-preview"
            />
          </div>

          <button
            type="button"
            onClick={(e) => {
              e.preventDefault();
              e.stopPropagation();
              navigate("/hr/dashboard/customize-certificate", {
                state: { baseTemplate: templates[currentIndex] },
              });
            }}
            className="customize-button"
          >
            Customize
          </button>

          <button
            className="delete-button"
            onClick={() =>
              handleDeleteTemplate(templates[currentIndex].baseTemplateId)
            }
          >
            Remove
          </button>

          <button
            className="nav-arrow right"
            onClick={nextSlide}
            disabled={currentIndex === templates.length - 1}
          >
            ❯
          </button>
        </div>
      )}
    </div>
  );
};

export default BaseTemplatesPage;
