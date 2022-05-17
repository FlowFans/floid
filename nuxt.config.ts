import { defineNuxtConfig } from "nuxt";
import { NodeGlobalsPolyfillPlugin } from "@esbuild-plugins/node-globals-polyfill";

// https://v3.nuxtjs.org/api/configuration/nuxt.config
export default defineNuxtConfig({
  // set source dir
  srcDir: "src/",
  // Environment Variables
  runtimeConfig: {},
  // ts config
  typescript: {
    shim: false,
  },
  modules: [
    // Doc: https://github.com/nuxt-community/tailwindcss-module
    "@nuxtjs/tailwindcss",
  ],
  // Build transpile
  build: {
    transpile: ["@onflow/fcl"],
    postcss: {
      postcssOptions: {
        plugins: ["postcss-import", "tailwindcss", "autoprefixer"],
      },
    },
  },
  // vite configure
  vite: {
    // raw assets
    assetsInclude: ["**/*.cdc"],
    // Dependency Pre-Bundling
    optimizeDeps: {
      esbuildOptions: {
        define: {
          global: "globalThis",
        },
        plugins: [
          NodeGlobalsPolyfillPlugin({
            buffer: true,
          }),
        ],
      },
    },
  },
});
