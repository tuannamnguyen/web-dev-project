import * as React from "react";
import Card from "@mui/material/Card";
import CardContent from "@mui/material/CardContent";
import CardMedia from "@mui/material/CardMedia";
import Typography from "@mui/material/Typography";
import { Button, CardActionArea, CardActions } from "@mui/material";

export default function CardCourse() {
  return (
    <Card sx={{ maxWidth: 300 }}>
      <CardActionArea>
        <CardMedia
          component="img"
          height="140"
          image="/static/sample/img1.png"
          alt="UETệ"
        />
        <CardContent>
          <Typography gutterBottom variant="h5" component="div">
            An toàn và an ninh mạng
          </Typography>
          <Typography variant="body2" color="text.secondary">
            Học kỳ I năm học 2022 - 2023<br></br>Giảng viên: Nguyễn Đại Thọ
          </Typography>
        </CardContent>
      </CardActionArea>
      <CardActions>
        <Button
          size="small"
          color="primary"
          href="https://courses.uet.vnu.edu.vn/course/view.php?id=8264"
        >
          Learning
        </Button>
      </CardActions>
    </Card>
  );
}
