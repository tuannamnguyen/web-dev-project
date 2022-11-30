import axios from "axios";
import { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import Layout from "../components/Layout";
import { formatDistanceToNow } from "date-fns";

import { AiFillFile } from "react-icons/ai";
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
      <hr />
      {/* TODO: làm css cho phần bên dưới */}
      {posts &&
        posts.map((post) => {
          return (
            <>
              <div className=" bg-white p-5 rounded-md hover:shadow-md my-3">
                <span className="text-sm text-slate-500 mb-1">
                  {post.post_time}
                </span>
                <details>
                  <summary class="text-lg font-semibold mb-3 cursor-pointer">
                    {post.title}
                  </summary>
                  <div class="mb-3">
                    <p>{post.detail} </p>
                    {post.media_url && (
                      <>
                        {post.media_url && (
                          <>
                            <AiFillFile size={65} />
                            <span>
                              <a href={post.media_url}></a>
                            </span>
                          </>
                        )}
                      </>
                    )}
                  </div>
                </details>
              </div>
              <hr />
            </>
          );
        })}
    </Layout>
  );
};

export default CourseDetailPage;
