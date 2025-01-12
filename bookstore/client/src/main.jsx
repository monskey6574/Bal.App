import { createRoot } from 'react-dom/client'
import './index.css'
import { createBrowserRouter, RouterProvider } from "react-router-dom";

import App from './App.jsx'
import Home from './pages/Home.jsx';
import About from './pages/about.jsx';
import Contact from './pages/Contact.jsx';


const router = createBrowserRouter([
  {
    path:"/",
    element: <Home/>
  },
  {
    path:"/about",
    element:<About/>
  },
  {
    path:"/contact",
    element:<Contact/>
  }
]);

createRoot(document.getElementById("root")).render(
  <RouterProvider router={router}/>


)
