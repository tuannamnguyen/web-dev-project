import React from 'react'

import GitHubIcon from '@mui/icons-material/GitHub';
import FacebookIcon from '@mui/icons-material/Facebook';
import TwitterIcon from '@mui/icons-material/Twitter';

import Grid from '@mui/material/Grid';
import Sidebar from './Sidebar';



export default function Blog() {

    

    const sidebar = {
        title: 'About',
        description:
          'Etiam porta sem malesuada magna mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.',
        archives: [
          { title: 'March 2020', url: '#' },
          { title: 'February 2020', url: '#' },
          { title: 'January 2020', url: '#' },
          { title: 'November 1999', url: '#' },
          { title: 'October 1999', url: '#' },
          { title: 'September 1999', url: '#' },
          { title: 'August 1999', url: '#' },
          { title: 'July 1999', url: '#' },
          { title: 'June 1999', url: '#' },
          { title: 'May 1999', url: '#' },
          { title: 'April 1999', url: '#' },
        ],
        social: [
          { name: 'GitHub', icon: GitHubIcon },
          { name: 'Twitter', icon: TwitterIcon },
          { name: 'Facebook', icon: FacebookIcon },
        ],
      };

      const theme = createTheme();

    return (
        <>
            <Grid container spacing={5} sx={{ mt: 3 }} >
            <Sidebar
              title={sidebar.title}
              description={sidebar.description}
              archives={sidebar.archives}
              social={sidebar.social}
            />
            </Grid>
        </>
    )
}
