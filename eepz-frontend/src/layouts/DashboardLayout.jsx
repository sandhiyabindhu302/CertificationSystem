import { useState } from "react";
import { useAuth } from "../contexts/auth/AuthContext";
import Sidebar from "./Sidebar";
import Navbar from "./Navbar";
import "../styles/layout_styles/DashboardLayout.css";

const DashboardLayout = ({ children, role, allowedRoles = [] }) => {
  const { user } = useAuth();
  const [sidebarOpen, setSidebarOpen] = useState(false);

  const currentRole = user?.role || role;

  return (
    <div className="dashboard-layout">
      {/* SIDEBAR */}
     

      {/* MAIN CONTENT WRAPPER */}
      <div className="dashboard-main-wrapper">
        {/* NAVBAR */}
        <Navbar
          onSidebarToggle={() => setSidebarOpen(!sidebarOpen)}
          sidebarOpen={sidebarOpen}
        />

        {/* MAIN CONTENT */}
        <main className="dashboard-main-content">
          {children}
        </main>
      </div>
    </div>
  );
};

export default DashboardLayout;
