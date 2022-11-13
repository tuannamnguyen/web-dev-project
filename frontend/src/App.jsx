import "./App.css";
import {
  createBrowserRouter,
  createRoutesFromElements,
  RouterProvider,
  Route,
} from "react-router-dom";
import Base from "./pages/Base";
import Course from "./pages/Course";
import Home from "./pages/Home";

const router = createBrowserRouter(
  createRoutesFromElements(
    <Route path="/" element={<Base />}>
      <Route index element={<Home />} />
      <Route path="course" element={<Course />} />
    </Route>
  )
);

function App() {
  return <RouterProvider router={router} />;
}

export default App;
