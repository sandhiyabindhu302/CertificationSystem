import React, { useState, useEffect } from "react";
import { useLocation, useNavigate } from "react-router-dom";
import { toast, ToastContainer } from "react-toastify"; // <-- Added toast and ToastContainer
import "react-toastify/dist/ReactToastify.css"; // <-- Import toast styles
import Draggable from "react-draggable";
import certificateService from "../../../services/certificate/certificateService";
import "../../../styles/certificate/CustomizeCertificatePage.css";
import Breadcrumb from "../../../components/common/Breadcrumb";
import CustomDropdown from "../../../components/project-management/common/CustomDropdown";

const CustomizeCertificatePage = () => {
  const location = useLocation();
  const selectedTemplate = location.state?.baseTemplate;
  const editTemplate = location.state?.editTemplate ?? null;
  const navigate = useNavigate();

  const [templateData, setTemplateData] = useState({
    templateName: "",
    templateType: "",
    templateLayout: "default",
    logoId: null,
    employeeId: null,
    employeeName: "",
    achievement: "",
  });

  const [isEditMode, setIsEditMode] = useState(false);
  const [templateId, setTemplateId] = useState(null);
  const [logoFile, setLogoFile] = useState(null);
  const [logoPreview, setLogoPreview] = useState(null);
  const [background, setBackground] = useState(null);
  const [employees, setEmployees] = useState([]);
  const [loadingEmployees, setLoadingEmployees] = useState(false);
  const [dropdownOptions, setDropdownOptions] = useState([]);

  const [previewData, setPreviewData] = useState({
    name: "",
    achievement: "",
  });

  const [fontSizes, setFontSizes] = useState({
    title: 30,
    type: 22,
    name: 24,
    achievement: 20,
  });

  const [logoSize, setLogoSize] = useState(140);

  const [droppedItems, setDroppedItems] = useState({
    logo: false,
    title: false,
    type: false,
    name: false,
    achievement: false,
  });

  const removeField = (field) => {
    setDroppedItems((prev) => ({
      ...prev,
      [field]: false,
    }));
  };

  const [positions, setPositions] = useState({
    logo: { x: 380, y: 20 },
    title: { x: 280, y: 140 },
    type: { x: 320, y: 210 },
    name: { x: 320, y: 270 },
    achievement: { x: 320, y: 320 },
  });

  const increaseFont = (field) => {
    setFontSizes((prev) => ({
      ...prev,
      [field]: prev[field] + 2,
    }));
  };

  const decreaseFont = (field) => {
    setFontSizes((prev) => ({
      ...prev,
      [field]: Math.max(prev[field] - 2, 10),
    }));
  };

  const increaseLogo = () => setLogoSize((prev) => prev + 10);
  const decreaseLogo = () => setLogoSize((prev) => Math.max(prev - 10, 40));

  const handleDragStart = (e, field) => {
    e.dataTransfer.setData("field", field);
  };

  const allowDrop = (e) => {
    e.preventDefault();
  };

  const handleDrop = (e) => {
    e.preventDefault();

    const field = e.dataTransfer.getData("field");
    const rect = e.currentTarget.getBoundingClientRect();

    const x = e.clientX - rect.left;
    const y = e.clientY - rect.top;

    setDroppedItems((prev) => ({
      ...prev,
      [field]: true,
    }));

    setTimeout(() => {
      const element = document.querySelector(`[data-drag="${field}"]`);

      if (element) {
        const width = element.offsetWidth;
        const height = element.offsetHeight;

        setPositions((prev) => ({
          ...prev,
          [field]: {
            x: Math.min(Math.max(x - width / 2, 0), rect.width - width), // Ensures element stays inside the container
            y: Math.min(Math.max(y - height / 2, 0), rect.height - height), // Ensures element stays inside the container
          },
        }));
      } else {
        setPositions((prev) => ({
          ...prev,
          [field]: { x, y },
        }));
      }
    }, 0);
  };

  useEffect(() => {
    const fetchEmployees = async () => {
      try {
        setLoadingEmployees(true);

        const response = await certificateService.getAvailableEmployees();

        const employeeList = Array.isArray(response)
          ? response
          : response?.data || [];

        const filteredEmployees = employeeList.filter(
          (emp) =>
            emp.firstName &&
            emp.lastName &&
            !emp.firstName.toLowerCase().includes("admin") &&
            !emp.lastName.toLowerCase().includes("admin"),
        );

        setEmployees(filteredEmployees);
      } catch (error) {
        console.error("Employee fetch error", error);
      } finally {
        setLoadingEmployees(false);
      }
    };

    fetchEmployees();
  }, []);

  useEffect(() => {
    if (editTemplate) {
      console.log("EDIT TEMPLATE:", editTemplate);
    }
  }, [editTemplate]);

  useEffect(() => {
    if (editTemplate && editTemplate.templateLayout) {
      setIsEditMode(true);
      setTemplateId(editTemplate.templateId);

      setTemplateData({
        templateName: editTemplate.templateName,
        templateType: editTemplate.templateType,
        templateLayout: editTemplate.templateLayout,
        logoId: editTemplate.logoId,
        employeeId: editTemplate.employeeId,
        employeeName: editTemplate.employeeName,
        achievement: editTemplate.achievement,
      });

      fetchAchievements(editTemplate.templateType);
      const layout = JSON.parse(editTemplate.templateLayout);

      let bg = layout?.canvas?.background;

      if (bg) {
        const normalizedBg = bg.startsWith("http")
          ? bg
          : `http://localhost:5123${bg}`;

        setBackground(normalizedBg);
      } else if (selectedTemplate?.previewImage) {
        setBackground(`http://localhost:5123${selectedTemplate.previewImage}`);
      }

      if (layout) {
        setPositions({
          logo: layout.logo?.position || { x: 380, y: 20 },
          title: layout.title?.position || { x: 280, y: 140 },
          type: layout.type?.position || { x: 320, y: 210 },
          name: layout.name?.position || { x: 320, y: 270 },
          achievement: layout.achievement?.position || { x: 320, y: 320 },
        });

        setFontSizes({
          title: layout.title?.fontSize || 30,
          type: layout.type?.fontSize || 22,
          name: layout.name?.fontSize || 24,
          achievement: layout.achievement?.fontSize || 20,
        });

        setLogoSize(layout.logo?.size || 140);

        setDroppedItems({
          logo: layout.logo?.enabled || false,
          title: layout.title?.enabled || false,
          type: layout.type?.enabled || false,
          name: layout.name?.enabled || false,
          achievement: layout.achievement?.enabled || false,
        });

        setPreviewData({
          name: layout.name?.text || "",
          achievement: layout.achievement?.text || "",
        });
      }
    }
  }, [editTemplate]);

  const fetchAchievements = async (type) => {
    if (!type) return;

    try {
      const lowerType = type.toLowerCase();
      let data = [];

      if (lowerType.includes("skill")) {
        data = await certificateService.searchSkills();
      } else if (lowerType.includes("goal")) {
        data = await certificateService.searchGoals();
      } else if (lowerType.includes("reward")) {
        data = await certificateService.searchRewards();
      }

      setDropdownOptions(data || []);
    } catch (error) {
      console.error("Error fetching achievements:", error);
      setDropdownOptions([]);
    }
  };

  const handleTemplateTypeChange = (e) => {
    const value = e.target.value;

    setTemplateData({
      ...templateData,
      templateType: value,
    });

    fetchAchievements(value);
  };

  const handleAchievementSelect = (e) => {
    const value = e.target.value;

    setPreviewData({
      ...previewData,
      achievement: value,
    });

    setTemplateData({
      ...templateData,
      achievement: value,
    });
  };

  const handleLogoChange = (e) => {
    const file = e.target.files[0];

    if (!file) return;

    setLogoFile(file);

    const preview = URL.createObjectURL(file);
    setLogoPreview(preview);

    setDroppedItems((prev) => ({
      ...prev,
      logo: true,
    }));
  };

  const handleSave = async () => {
    if (!templateData.employeeId) {
      toast.error("Please select an employee before saving the template.");
      return;
    }

    try {
      let logoId = templateData.logoId;

      if (logoFile) {
        const uploadResponse = await certificateService.uploadLogo(logoFile);

        const logoData = uploadResponse?.data || uploadResponse;

        logoId = logoData.logoId?.logoId || logoData.logoId;
      }

      if (!logoId) {
        toast.error("Please upload a logo before saving.");
        return;
      }

      const canvas = document.querySelector(".certificate-preview-canvas");

      const canvasWidth = canvas?.offsetWidth || 900;
      const canvasHeight = canvas?.offsetHeight || 600;

      let bgPath = "";

      if (background) {
        bgPath = background;
      } else if (selectedTemplate?.previewImage) {
        bgPath = selectedTemplate.previewImage;
      } else if (editTemplate?.templateLayout) {
        const oldLayout = JSON.parse(editTemplate.templateLayout);
        bgPath = oldLayout?.canvas?.background || "";
      }

      const cleanBackground = bgPath
        ? bgPath.replace("http://localhost:5123", "")
        : "";

      const layoutData = {
        canvas: {
          width: canvasWidth,
          height: canvasHeight,
          background: cleanBackground,
        },

        logo: {
          enabled: droppedItems.logo,
          size: logoSize,
          position: positions.logo,
        },

        title: {
          enabled: droppedItems.title,
          fontSize: fontSizes.title,
          position: positions.title,
          text: templateData.templateName,
        },

        type: {
          enabled: droppedItems.type,
          fontSize: fontSizes.type,
          position: positions.type,
          text: templateData.templateType,
        },

        name: {
          enabled: droppedItems.name,
          fontSize: fontSizes.name,
          position: positions.name,
          text: previewData.name,
        },

        achievement: {
          enabled: droppedItems.achievement,
          fontSize: fontSizes.achievement,
          position: positions.achievement,
          text: previewData.achievement,
        },
      };

      const payload = {
        templateName: templateData.templateName,
        templateType: templateData.templateType,
        templateLayout: JSON.stringify(layoutData),
        logoId: Number(logoId),
        employeeId: parseInt(templateData.employeeId),
        employeeName: templateData.employeeName,
        achievement: templateData.achievement,
      };

      if (isEditMode) {
        await certificateService.updateTemplate(templateId, payload);
        toast.success("Template Updated Successfully");
      } else {
        await certificateService.createTemplate(payload);
        toast.success("Template Saved Successfully");
      }
    } catch (error) {
      console.error("Template Save Error:", error.response?.data || error);
      toast.error("Error saving template. Please try again.");
    }
  };

  const handleStop = (field, data) => {
    // Define Grid Size
    const GRID_SIZE = 10;

    const canvas = document.querySelector(".certificate-preview-canvas");
    const width = canvas.offsetWidth;
    const height = canvas.offsetHeight;

    // Snap to grid logic
    const snapX = Math.round(data.x / GRID_SIZE) * GRID_SIZE;
    const snapY = Math.round(data.y / GRID_SIZE) * GRID_SIZE;

    // Prevent dragging outside canvas
    if (snapX < 0 || snapY < 0 || snapX > width || snapY > height) {
      setDroppedItems((prev) => ({
        ...prev,
        [field]: false,
      }));
      return;
    }

    // Update positions to snap grid values
    setPositions((prev) => ({
      ...prev,
      [field]: { x: snapX, y: snapY },
    }));
  };

  return (
    <div className="certificate-page">
      <ToastContainer /> {/* Added ToastContainer to display toasts */}
      <Breadcrumb items={[{ label: "Home", path: "/dashboard" }]} />
      <div className="certificate-sidebar">
        <h2 className="sidebar-title">Customize Certificate</h2>

        {/* TEMPLATE NAME */}
        <div className="form-group">
          <label>Template Header</label>

          <input
            type="text"
            value={templateData.templateName}
            onChange={(e) =>
              setTemplateData({
                ...templateData,
                templateName: e.target.value,
              })
            }
          />

          {templateData.templateName && (
            <>
              <div
                className="drag-source"
                draggable
                onDragStart={(e) => handleDragStart(e, "title")}
              >
                Drag
              </div>

              <div className="font-controls">
                <button onClick={() => decreaseFont("title")}>-</button>
                <button onClick={() => increaseFont("title")}>+</button>
              </div>
            </>
          )}
        </div>

        {/* TEMPLATE TYPE */}
        <div className="form-group">
          <label>Template Type</label>

          <input
            type="text"
            placeholder="Skills / Goals / Rewards"
            value={templateData.templateType}
            onChange={handleTemplateTypeChange}
          />

          {templateData.templateType && (
            <>
              <div
                className="drag-source"
                draggable
                onDragStart={(e) => handleDragStart(e, "type")}
              >
                Drag
              </div>

              <div className="font-controls">
                <button onClick={() => decreaseFont("type")}>-</button>
                <button onClick={() => increaseFont("type")}>+</button>
              </div>
            </>
          )}
        </div>

        {/* LOGO */}
        <div className="form-group">
          <label>Upload Logo</label>

          <input type="file" accept="image/*" onChange={handleLogoChange} />

          {(logoPreview || templateData.logoId) && (
            <>
              <div
                className="drag-source"
                draggable
                onDragStart={(e) => handleDragStart(e, "logo")}
              >
                Drag
              </div>

              <div className="font-controls">
                <button onClick={decreaseLogo}>-</button>
                <button onClick={increaseLogo}>+</button>
              </div>
            </>
          )}
        </div>

        {/* EMPLOYEE */}
        <CustomDropdown
          label="Employee Name"
          value={templateData.employeeId}
          onChange={(name, selectedId) => {
            const employee = employees.find(
              (emp) => emp.employeeId === selectedId,
            );

            if (!employee) return;

            const fullName = `${employee.firstName} ${employee.lastName}`;

            setPreviewData({
              ...previewData,
              name: fullName,
            });

            setTemplateData({
              ...templateData,
              employeeId: selectedId,
              employeeName: fullName,
            });
          }}
          options={employees.map((emp) => ({
            value: emp.employeeId,
            label: `${emp.firstName} ${emp.lastName}`,
          }))}
          placeholder="Select Employee"
          error={""} // Optional error message
          disabled={loadingEmployees}
        />

        {previewData.name && (
          <>
            <div
              className="drag-source"
              draggable
              onDragStart={(e) => handleDragStart(e, "name")}
            >
              Drag
            </div>

            <div className="font-controls">
              <button onClick={() => decreaseFont("name")}>-</button>
              <button onClick={() => increaseFont("name")}>+</button>
            </div>
          </>
        )}

        {/* ACHIEVEMENT */}
        <CustomDropdown
          label="Area of Achievement"
          value={previewData.achievement}
          onChange={(name, value) => {
            setPreviewData({
              ...previewData,
              achievement: value,
            });

            setTemplateData({
              ...templateData,
              achievement: value,
            });
          }}
          options={dropdownOptions.map((item, index) => ({
            value:
              item.skillName ||
              item.goalTitle ||
              item.rewardName ||
              item.name ||
              "",
            label:
              item.skillName ||
              item.goalTitle ||
              item.rewardName ||
              item.name ||
              "",
          }))}
          placeholder="Select Achievement"
          error={""} // Optional error message
        />

        {previewData.achievement && (
          <>
            <div
              className="drag-source"
              draggable
              onDragStart={(e) => handleDragStart(e, "achievement")}
            >
              Drag
            </div>

            <div className="font-controls">
              <button onClick={() => decreaseFont("achievement")}>-</button>
              <button onClick={() => increaseFont("achievement")}>+</button>
            </div>
          </>
        )}
        <button className="save-btn" onClick={handleSave}>
          {isEditMode ? "Update Template" : "Save Template"}
        </button>
      </div>

      {/* CERTIFICATE PREVIEW */}

      <div
        className="certificate-preview-canvas"
        onDrop={handleDrop}
        onDragOver={allowDrop}
        style={{
          width: editTemplate
            ? JSON.parse(editTemplate.templateLayout)?.canvas?.width || 900
            : 900,
          height: editTemplate
            ? JSON.parse(editTemplate.templateLayout)?.canvas?.height || 500
            : 500,

          backgroundImage: background
            ? `url(${background})`
            : selectedTemplate?.previewImage
            ? `url(http://localhost:5123${selectedTemplate.previewImage})`
            : "none",

          backgroundSize: "cover",
          backgroundPosition: "center",
        }}
      >
        {droppedItems.logo && (
          <Draggable
            position={positions.logo}
            onStop={(e, data) => handleStop("logo", data)}
          >
            <div className="draggable" data-drag="logo">
              <img
                src={
                  logoPreview ||
                  (templateData.logoId
                    ? `http://localhost:5123/api/certificates/logo/${templateData.logoId}`
                    : "")
                }
                alt="logo"
                style={{ width: logoSize }}
              />
            </div>
          </Draggable>
        )}
        {droppedItems.title && (
          <Draggable
            position={positions.title}
            onStop={(e, data) => handleStop("title", data)}
          >
            <h1
              className="draggable"
              data-drag="title"
              style={{ fontSize: fontSizes.title }}
            >
              {templateData.templateName}
            </h1>
          </Draggable>
        )}

        {droppedItems.type && (
          <Draggable
            position={positions.type}
            onStop={(e, data) => handleStop("type", data)}
          >
            <h2
              className="draggable"
              data-drag="type"
              style={{ fontSize: fontSizes.type }}
            >
              {templateData.templateType}
            </h2>
          </Draggable>
        )}

        {droppedItems.name && (
          <Draggable
            position={positions.name}
            onStop={(e, data) => handleStop("name", data)}
          >
            <h2
              className="draggable"
              data-drag="name"
              style={{ fontSize: fontSizes.name }}
            >
              {previewData.name}
            </h2>
          </Draggable>
        )}

        {droppedItems.achievement && (
          <Draggable
            position={positions.achievement}
            onStop={(e, data) => handleStop("achievement", data)}
          >
            <h3
              className="draggable"
              data-drag="achievement"
              style={{ fontSize: fontSizes.achievement }}
            >
              {previewData.achievement}
            </h3>
          </Draggable>
        )}
      </div>
    </div>
  );
};

export default CustomizeCertificatePage;