import React from "react";
import ReactDOM from "react-dom";

import { App } from "../components/App";

const element = document.getElementById('root')

ReactDOM.createRoot(element).render(
  <React.StrictMode>
    <App {...element?.dataset} />
  </React.StrictMode>
)