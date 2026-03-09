import { BrowserRouter } from "react-router-dom";
import { AuthProvider } from "./contexts/auth/AuthContext";
import { Toaster } from "sonner";
import AppRoutes from "./routes";
import "./App.css";

import { DndProvider } from "react-dnd";
import { HTML5Backend } from "react-dnd-html5-backend"; // Import HTML5 Backend for DnD

function App() {
  return (
    <DndProvider backend={HTML5Backend}> {/* Wrapping the entire app with DnD provider */}
      <BrowserRouter>
        <AuthProvider>
          <Toaster
            position="top-right"
            richColors
            closeButton
            expand={false}
            duration={4000}
            toastOptions={{
              style: {
                background: "#fff",
                color: "#333",
                border: "1px solid #e0e0e0",
              },
            }}
          />
          <AppRoutes />
        </AuthProvider>
      </BrowserRouter>
    </DndProvider>
  );
}

export default App;