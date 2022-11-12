import * as React from "react";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import Home from "./pages/Home";
import Course from "./pages/Course";
import Base from "./pages/Base";

export default function Router() {
    return (
        <BrowserRouter>
            <Routes>
                <Route path="/" element={<Base />}>
                    <Route path="home" element={<Home />} />
                    <Route path="course" element={<Course />} />
                </Route>

            </Routes>
        </BrowserRouter>
    );
}