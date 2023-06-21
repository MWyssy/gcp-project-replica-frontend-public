import {defineConfig} from "vite";
import react from "@vitejs/plugin-react";

// https://vitejs.dev/config/
export default defineConfig({
  test: {
    exclude: ["packages/template/*"],
  },
  plugins: [react()],
});
