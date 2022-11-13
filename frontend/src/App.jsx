import "./App.css";
import {
  createBrowserRouter,
  createRoutesFromElements,
  RouterProvider,
  Route,
} from "react-router-dom";
import Base from "./pages/Base";
import Course from "./pages/Course";

const router = createBrowserRouter(
  createRoutesFromElements(
    <Route path="/" element={<Base />}>
      <Route path="course" element={<Course />} />
    </Route>
  )
);

function App() {
  return <RouterProvider router={router} />;
}

export default App;
