import * as React from "react"
import Grid from '@mui/material/Grid';
import { Accordion, AccordionDetails, AccordionSummary, Typography } from "@mui/material";
import ExpandMoreIcon from '@mui/icons-material/ExpandMore';

export default function Content() {
    return (
        <>
            <Accordion>
                <AccordionSummary expandIcon={<ExpandMoreIcon />} id="panel1a-header">
                    <Typography>Week 1</Typography>
                </AccordionSummary>
                <AccordionDetails>
                    <Typography>
                        Test
                    </Typography>
                </AccordionDetails>
            </Accordion>
            <Accordion>
                <AccordionSummary expandIcon={<ExpandMoreIcon />} id="panel1a-header">
                    <Typography>Week 1</Typography>
                </AccordionSummary>
                <AccordionDetails>
                    <Typography>
                        Test
                    </Typography>
                </AccordionDetails>
            </Accordion>
        </>

    );
}