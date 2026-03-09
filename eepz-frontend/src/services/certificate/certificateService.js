import certificateApiClient from "./certificateApi";
import apiClient from "../project_management/api";

const certificateService = {

createTemplate: async (templateData) => {

  console.log("SENDING TEMPLATE TO API:", templateData);

  const response = await certificateApiClient.post("/template", templateData);

  console.log("API RESPONSE:", response.data);

  return response.data;
},

  getTemplateById: async (templateId) => {
    const response = await certificateApiClient.get(`/template/${templateId}`);
    return response.data;
  },

  getAllTemplates: async () => {
    const response = await certificateApiClient.get("/templates");
    return response.data;
  },

  updateTemplate: async (templateId, templateData) => {
    const response = await certificateApiClient.put(`/template/${templateId}`, templateData);
    return response.data;
  },

  deleteTemplate: async (templateId) => {
    const response = await certificateApiClient.delete(`/template/${templateId}`);
    return response.data;
  },

deleteBaseTemplate: async (templateId) => {
  const response = await certificateApiClient.delete(`/base-template/${templateId}`);
  return response.data;
},


  getAvailableEmployees: async () => {
    const response = await apiClient.get("/employees");
    return response.data;
  },

searchSkills: async () => {
  const response = await certificateApiClient.get("/skills");
  return response.data;
},

searchGoals: async () => {
  const response = await certificateApiClient.get("/goals");
  return response.data;
},

searchRewards: async () => {
  const response = await certificateApiClient.get("/rewards");
  return response.data;
},

uploadBaseTemplate: async (templateName, file) => {

  const formData = new FormData();

  formData.append("TemplateName", templateName);
  formData.append("CssClass", "certificate-template");
  formData.append("Image", file);

  const response = await certificateApiClient.post(
    "/base-template/upload",
    formData,
    {
      headers: {
        "Content-Type": "multipart/form-data"
      }
    }
  );

  return response.data;
},

  getBaseTemplates: async () => {
    const response = await certificateApiClient.get("/base-templates");
    return response.data;
  },

finalizeTemplate: async (templateId) => {

  const response = await certificateApiClient.post(
    `/finalize-template/${templateId}`
  );

  return response.data;
},

 verifyCertificate: async (serialNumber) => {
    try {
      const response = await certificateApiClient.get(`/certificates/verify/${serialNumber}`);
      return response.data;
    } catch (error) {
      throw new Error("Certificate verification failed");
    }
  },

downloadCertificate: async (employeeId) => {

  const response = await certificateApiClient.get(
    `/download/${employeeId}`,
    {
      responseType: "blob"
    }
  );

  return response.data;
},

  uploadLogo: async (file) => {

    const formData = new FormData();
    formData.append("logoFile", file);

    const response = await certificateApiClient.post(
      "/logo/upload",
      formData,
      {
        headers: {
          "Content-Type": "multipart/form-data"
        }
      }
    );

    return response.data;
  }

  

};

export default certificateService;