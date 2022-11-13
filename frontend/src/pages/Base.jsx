import { Grid } from "@mui/material";
import { Container } from "@mui/system";
import * as React from "react";
import { Outlet } from "react-router-dom";
import Navbar from "../components/Navbar";
import Sidebar from "../components/Sidebar";

export default function Base() {
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
            <main>
              <Outlet />
            </main>
          </Grid>
          <Grid item xs={4} sm={8} md={4}>
            <Sidebar />
          </Grid>
        </Grid>
      </Container>
    </>
  );
}
