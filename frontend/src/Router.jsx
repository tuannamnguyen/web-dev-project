import * as React from "react";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import Home from "./pages/Home";
import Course from "./pages/Course";

export default function Router() {
    return (
        <BrowserRouter>
            <Routes>
                <Route path="/" element={<Home />} />
                <Route path="/course" element={<Course />} />
            </Routes>
        </BrowserRouter>
    );
}