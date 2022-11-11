import React from 'react';
import ReactDOM from 'react-dom/client';
import { createBrowserRouter, createRoutesFromElements, Route, RouterProvider } from "react-router-dom";
import './index.css';
import Course from './pages/Course';
import Home from './pages/Home';


const router = createBrowserRouter(
  createRoutesFromElements(
    <Route path='/' element={<Home />}>
      <Route path='home' element={<Home />} />
      <Route path='course' element={<Course />} />
    </Route>
  )
);

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
    <RouterProvider router={router} />
  </React.StrictMode>
);

