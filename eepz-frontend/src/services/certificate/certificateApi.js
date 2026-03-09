import axios from "axios";

// Fetch the CERTIFICATE API URL from environment variables
const API_BASE_URL = import.meta.env.VITE_API_URL + "/api"; // This points to the CERTIFICATE API base URL, with port 5123

// Create an Axios instance specifically for the Certificate API
const certificateApiClient = axios.create({
  baseURL: API_BASE_URL + "/certificates", // Add /certificates to target the certificate endpoints
  headers: {
    "Content-Type": "application/json",
  },
});

// Add Authorization token if available in localStorage
certificateApiClient.interceptors.request.use((config) => {
  const token = localStorage.getItem("accessToken");
  if (token) {
    config.headers.Authorization = `Bearer ${token}`;
  }
  return config;
});

export default certificateApiClient;