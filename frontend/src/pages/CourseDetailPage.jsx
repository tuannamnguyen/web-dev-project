import axios from "axios";
import { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import Layout from "../components/Layout";
import { formatDistanceToNow } from "date-fns";

const CourseDetailPage = () => {
  const params = useParams();
  const [posts, setPosts] = useState([]);

  useEffect(() => {
    axios
      .get("/api/courses/coursepost/" + params.id)
      .then((res) => setPosts(res.data))
      .catch((err) => console.error(err));
  }, [params]);

  return (
    <Layout>
      <h1 className="text-xl font-semibold mb-10">{params.id}</h1>
      <hr/>
      {posts &&
        posts.map((post) => {
          return (
            <>
              <h1>{post.title}</h1>
              <p>{formatDistanceToNow(new Date(post.post_time))} ago</p>
              <p>{post.detail}</p>
              <img src={post.image_url} alt="" />
              <hr />
            </>
          );
        })}
    </Layout>
  );
};

export default CourseDetailPage;
