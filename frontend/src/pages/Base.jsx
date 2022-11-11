import * as React from "react";
import { Breadcrumbs, Grid } from "@mui/material";
import { Container } from "@mui/system";
import Navbar from "../components/Navbar";
import Sidebar from "../components/Sidebar";

export default function Base(props) {
  return (
    <>
      <Navbar />
      <Container maxWidth="lg">
        <Grid container spacing={{ xs: 2, md: 3 }} columns={{ xs: 4, sm: 8, md: 12 }}>
          <Grid item xs={4} sm={8} md={8}>
            {props.children}
          </Grid>
          <Sidebar />
        </Grid>
      </Container>
    </>
  );
}
