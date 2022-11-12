import { Grid } from "@mui/material";
import { Container } from "@mui/system";
import * as React from "react";
import Navbar from "../components/Navbar";
import Sidebar from "../components/Sidebar";
import { Outlet, useLocation } from "react-router-dom";
import Home from "../pages/Home";

export default function Base(props) {
  return (
    <>
      <Navbar />
      <Container maxWidth="lg">
        <Grid
          container
          spacing={{ xs: 2, md: 3 }}
          columns={{ xs: 4, sm: 8, md: 12 }}
        >
          <Grid item xs={4} sm={8} md={8}>
            {useLocation().pathname === "/" ? <Home /> : <Outlet />}
          </Grid>
          <Grid item xs={4} sm={8} md={4}>
            <Sidebar />
          </Grid>
        </Grid>
      </Container>
    </>
  );
}
