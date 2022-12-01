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

  function mediaURL(url) {
    return url.substring(url.lastIndexOf("/") + 1);
  }
  
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
                  {formatDistanceToNow(new Date(post.post_time))} ago
                </span>
                <details>
                  <summary class="text-lg font-semibold mb-3 cursor-pointer">
                    {post.title}
                  </summary>
                  <div class="">
                    <p>{post.detail} </p>
                    {post.media_url && (
                      <>
                        {post.media_url && (
                          <>
                            <span>
                              <a
                                className="bg-white rounded-md hover:shadow-md"
                                href={post.media_url}
                              >
                                <AiFillFile size={65} />
                                {mediaURL(post.media_url)}
                              </a>
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
