import React from 'react'
import PropTypes from 'prop-types';
import Grid from '@mui/material/Grid';
import Stack from '@mui/material/Stack';
import Paper from '@mui/material/Paper';
import Typography from '@mui/material/Typography';
import Link from '@mui/material/Link';

export default function Sidebar() {
  return (
    <Grid item xs={4} sm={8} md={4}>
      <Paper elavation={3}>
        <p>Test sidebar</p>
      </Paper>
    </Grid>
  );
}