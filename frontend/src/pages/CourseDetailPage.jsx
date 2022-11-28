import axios from "axios";
import { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import Layout from "../components/Layout";

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
      {posts &&
        posts.map((post) => {
          return (
            <>
              <h1>{post.title}</h1>
              <p>{post.detail}</p>
              <p>{post.post_time}</p>
            </>
          );
        })}
    </Layout>
  );
};

export default CourseDetailPage;
