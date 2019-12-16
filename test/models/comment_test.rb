require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  test "Should not create empty Comment" do
      comment = Comment.new
      comment.save
      refute comment.valid?
  end
  #   assert true
  test "Should save comments with name" do
      comment = Comment.new(name: 'Xim', comment: 'Your trip sounds awesome')
      post = Post.new(title: 'Hi', content: 'Bye')
      comment.post = post
      assert comment.save
    end


  test "Should not save comments with no name" do
    comment = Comment.new(name: '', comment: 'Your trip sounds awesome')
    post = Post.new(title: 'Hi', content: 'Bye')
    comment.post = post
    refute comment.valid?
  end

  # assert not true
  test "Should not save comments with no comment" do
    comment = Comment.new(name: 'Xim', comment: '')
    post = Post.new(title: 'Hi', content: 'Bye')
    comment.post = post
    refute comment.valid?
  end

end
