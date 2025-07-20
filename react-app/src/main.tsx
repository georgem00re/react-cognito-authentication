import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import App from "./App";
import { Amplify } from "aws-amplify";
import awsExports from "./aws-exports.ts";

Amplify.configure(awsExports)

createRoot(document.getElementById('root')!).render(
  <StrictMode>
    <App />
  </StrictMode>,
)
