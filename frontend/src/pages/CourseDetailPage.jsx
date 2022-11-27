import axios from "axios";
import { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import Layout from "../components/Layout";

const CourseDetailPage = () => {
  const params = useParams();
  const [posts, setPosts] = useState([]);

  useEffect(() => {
    console.log(params.id);
    axios
      .get("https://jsonplaceholder.typicode.com/posts")
      .then((res) => setPosts(res.data))
      .catch((err) => console.error(err));
  }, []);

  return (
    <Layout>
      <div>test</div>
      {posts &&
        posts.map((post) => {
          return (
            <>
              <h1>{post.title}</h1>
              <p>{post.body}</p>
            </>
          );
        })}
    </Layout>
  );
};

export default CourseDetailPage;
