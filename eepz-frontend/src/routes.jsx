import { Routes, Route, Navigate } from "react-router-dom";
import { useAuth } from "../src/contexts/auth/AuthContext";
import ProtectedRoute from "../src/components/guards/ProtectedRoute";
import PublicRoute from "../src/components/guards/PublicRoute";
import DashboardLayout from "../src/layouts/DashboardLayout";

// ===== AUTH PAGES (pages/auth/common/) =====
import Login from "../src/pages/auth/common/Login";
import VerifyCode from "../src/pages/auth/common/VerifyCode";
import ChangePassword from "../src/pages/auth/common/ChangePassword";
import ResetPassword from "../src/pages/auth/common/ResetPassword";
import VerifyResetOtp from "../src/pages/auth/common/VerifyResetOtp";
import VerifyFirstLogin from "../src/pages/auth/common/VerifyFirstLogin";
import EmployeeProfile from "../src/pages/auth/common/EmployeeProfile";

// ===== ADMIN PAGES (pages/auth/admin/) =====
import AdminDashboard from "../src/pages/dashboards/AdminDashboard";
import DepartmentList from "../src/pages/auth/admin/departments/DepartmentList";
import RoleList from "../src/pages/auth/admin/roles/RoleList";
import UserList from "../src/pages/auth/admin/users/UserList";
import ChangeRequestManagement from "../src/pages/auth/admin/ChangeRequestManagement";

// ===== DASHBOARDS =====
import LeadershipDashboard from "../src/pages/dashboards/LeadershipDashboard";
import DepartmentHeadDashboard from "../src/pages/dashboards/DepartmentHeadDashboard";
import ManagerDashboard from "../src/pages/dashboards/ManagerDashboard";
import EmployeeDashboard from "../src/pages/dashboards/EmployeeDashboard";
import HRDashboard from "../src/pages/dashboards/HRDashboard";

//Project Management Imports
import ProjectManagementDashboard from "../src/pages/project_management/ProjectManagementDashboard";
import CreateProject from "../src/pages/project_management/CreateProject";
import ProjectDetails from "../src/pages/project_management/ProjectDetails";
import ProjectList from "../src/pages/project_management/ProjectList";
import ResourcePoolMapping from "../src/pages/project_management/ResourcePoolMapping";

import CustomizeCertificatePage from "../src/pages/hr/customize-certificate/CustomizeCertificatePage";
import ViewTemplatesPage from "../src/pages/hr/customize-certificate/ViewTemplatesPage";
import BaseTemplatesPage from "../src/pages/hr/customize-certificate/BaseTemplatesPage";
import MyAchievements from "../src/pages/employee/MyAchievements";
import VerifyCertificate from "../src/pages/employee/VerifyCertificate"; // Import the VerifyCertificate component

const AppRoutes = () => {
  const { user } = useAuth();

  return (
    <Routes>
      {/* === FALLBACK === */}
      <Route
        path="/"
        element={<Navigate to={user ? "/dashboard" : "/login"} replace />}
      />

      <Route
        path="*"
        element={<Navigate to={user ? "/dashboard" : "/login"} replace />}
      />

      {/* === PUBLIC AUTH ROUTES === */}
      <Route
        path="/login"
        element={
          <PublicRoute>
            <Login />
          </PublicRoute>
        }
      />
      <Route
        path="/verify-code"
        element={
          <PublicRoute>
            <VerifyCode />
          </PublicRoute>
        }
      />
      <Route
        path="/reset-password"
        element={
          <PublicRoute>
            <ResetPassword />
          </PublicRoute>
        }
      />
      <Route
        path="/verify-reset-otp"
        element={
          <PublicRoute>
            <VerifyResetOtp />
          </PublicRoute>
        }
      />
      <Route
        path="/verify-first-login"
        element={
          <PublicRoute>
            <VerifyFirstLogin />
          </PublicRoute>
        }
      />
      <Route path="/change-password" element={<ChangePassword />} />

      {/* === PROTECTED DASHBOARDS === */}
      <Route
        path="/dashboard"
        element={
          <ProtectedRoute>
            <DashboardLayout>
              {user?.role === "Admin" && <AdminDashboard />}
              {user?.role === "Leadership" && <LeadershipDashboard />}
              {user?.role === "Department Head" && <DepartmentHeadDashboard />}
              {user?.role === "Manager" && <ManagerDashboard />}
              {user?.role === "Employee" && <EmployeeDashboard />}
              {user?.role === "HR" && <HRDashboard />}
            </DashboardLayout>
          </ProtectedRoute>
        }
      />

      {/* === ADMIN ROUTES (components/auth/admin/) === */}
      <Route
        path="/admin/departments"
        element={
          <ProtectedRoute allowedRoles={["Admin"]}>
            <DashboardLayout role="Admin">
              <DepartmentList />
            </DashboardLayout>
          </ProtectedRoute>
        }
      />
      <Route
        path="/admin/roles"
        element={
          <ProtectedRoute allowedRoles={["Admin"]}>
            <DashboardLayout role="Admin">
              <RoleList />
            </DashboardLayout>
          </ProtectedRoute>
        }
      />
      <Route
        path="/admin/users"
        element={
          <ProtectedRoute allowedRoles={["Admin"]}>
            <DashboardLayout role="Admin">
              <UserList />
            </DashboardLayout>
          </ProtectedRoute>
        }
      />
      <Route
        path="/admin/change-requests"
        element={
          <ProtectedRoute allowedRoles={["Admin"]}>
            <DashboardLayout role="Admin">
              <ChangeRequestManagement />
            </DashboardLayout>
          </ProtectedRoute>
        }
      />
      <Route
        path="/hr/dashboard"
        element={
          <ProtectedRoute allowedRoles={["HR"]}>
            <DashboardLayout role="HR">
              <HRDashboard />
            </DashboardLayout>
          </ProtectedRoute>
        }
      />

      <Route
        path="/hr/dashboard/projectmgmt"
        element={
          <ProtectedRoute allowedRoles={["HR"]}>
            <DashboardLayout role="HR">
              <ProjectManagementDashboard />
            </DashboardLayout>
          </ProtectedRoute>
        }
      />
      <Route
        path="/hr/dashboard/projectmgmt/create"
        element={
          <ProtectedRoute allowedRoles={["HR"]}>
            <DashboardLayout role="HR">
              <CreateProject />
            </DashboardLayout>
          </ProtectedRoute>
        }
      />

      <Route
        path="/hr/dashboard/projectmgmt/list"
        element={
          <ProtectedRoute allowedRoles={["HR"]}>
            <DashboardLayout role="HR">
              <ProjectList />
            </DashboardLayout>
          </ProtectedRoute>
        }
      />
      <Route
        path="/hr/dashboard/projectmgmt/view/:projectId"
        element={
          <ProtectedRoute allowedRoles={["HR"]}>
            <DashboardLayout role="HR">
              <ProjectDetails />
            </DashboardLayout>
          </ProtectedRoute>
        }
      />
      <Route
        path="/hr/dashboard/projectmgmt/resourcepool"
        element={
          <ProtectedRoute allowedRoles={["HR"]}>
            <DashboardLayout role="HR">
              <ResourcePoolMapping />
            </DashboardLayout>
          </ProtectedRoute>
        }
      />

      <Route
        path="/certificate/base-templates"
        element={
          <ProtectedRoute allowedRoles={["HR"]}>
            <DashboardLayout role="HR">
              <BaseTemplatesPage />
            </DashboardLayout>
          </ProtectedRoute>
        }
      />

      <Route
        path="/employee/my-achievements"
        element={
          <ProtectedRoute allowedRoles={["Employee"]}>
            <DashboardLayout role="Employee">
              <MyAchievements />
            </DashboardLayout>
          </ProtectedRoute>
        }
      />

      <Route
        path="/hr/dashboard/customize-certificate"
        element={
          <ProtectedRoute allowedRoles={["HR"]}>
            <DashboardLayout role="HR">
              <CustomizeCertificatePage />
            </DashboardLayout>
          </ProtectedRoute>
        }
      />

      <Route
        path="/employee/my-achievements"
        element={
          <ProtectedRoute allowedRoles={["Employee"]}>
            <DashboardLayout role="Employee">
              <MyAchievements />
            </DashboardLayout>
          </ProtectedRoute>
        }
      />

      <Route
        path="/employee/verify-certificate"
        element={<VerifyCertificate />} // Direct access without login
      />

      <Route path="/certificate/templates" element={<ViewTemplatesPage />} />

      {/* === PROFILE (Shared) === */}
      <Route
        path="/profile"
        element={
          <ProtectedRoute>
            <DashboardLayout role={user?.role}>
              <EmployeeProfile />
            </DashboardLayout>
          </ProtectedRoute>
        }
      />
    </Routes>
  );
};

export default AppRoutes;
