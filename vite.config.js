import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'
const path = require("path");

const APP_BASE_URL = "/"

const resolve = {
  alias: {
    '@': path.resolve(__dirname, './src'),
  },
}

export default defineConfig(({ command, mode, ssrBuild }) => {
  if (command === 'serve') {
    return {
      plugins: [vue()],
      base:"/",
      resolve
    }
  } else {
    // command === 'build'
    return {
      plugins: [vue()],
      base: APP_BASE_URL,
      publicDir:"/test/test/",
      build: {
        rollupOptions: {
          input: {
            'welcome': path.resolve(__dirname,'./src/app/WelcomeApp/welcome.js'), 
            //Import auto here.
          },
          watch: {},
          output: {
            entryFileNames: `assets/[name].js`,
            chunkFileNames: `assets/[name].js`,
            assetFileNames: `assets/[name].[ext]`
          }
        }
      },
      resolve
    }
  }
})
