require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #set up variables
  setup do
  @comment = comments(:one)
  @post = posts(:one)
  end

  #Test create a comment
  test "should create comment" do
    assert_difference('Comment.count') do
      post ("/posts/"+@post.post.id.to_s+"/comments"), params: { comment: { name: @comment.name, comment: @comment.comment, post_id: @post.id}}
    end
    assert_redirected_to ("/posts/"+@post.post.id.to_s+"/comments")
  end

  #test destroy comment
  test "Should delete (destroy) a particular comment" do
    assert_difference('Comment.count', -1) do
      delete comment_url(@comment)
    end
    assert_redirected_to post_comments_url
  end
end
