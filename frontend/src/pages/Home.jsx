import * as React from "react";
import { Grid } from "@mui/material";
import CardCourse from "../components/CardCourse";

export default function Home() {
  return (
    <Grid
      container
      spacing={{ xs: 2, md: 3 }}
      columns={{ xs: 4, sm: 8, md: 12 }}
    >
      <Grid item sm={4}>
        <CardCourse />
      </Grid>
      <Grid item sm={4}>
        <CardCourse />
      </Grid>
      <Grid item sm={4}>
        <CardCourse />
      </Grid>
    </Grid>
  );
}
