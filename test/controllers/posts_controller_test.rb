require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #test Indexing
  setup do
  @post = posts(:one)
  end

  test "Should get index" do
    get posts_url
    assert_response :success
  end

  #Test new post
  test "Should get new" do
    get new_post_url
    assert_response :success
  end

  #Test create post
  test "should create posts" do
    assert_difference('Post.count') do
      post posts_url, params: { post: { title: @post.title, content: @post.content}}
    end
    assert_redirected_to root_path
  end

  #Test show the post
  test "Should show the post" do
   get post_url(@post)
    assert_response :success
  end

  #test destroy post
  test "Should delete (destroy) the post" do
    assert_difference('Post.count', -1) do
      delete post_url(@post)
    end
    assert_redirected_to posts_url
  end
end
