require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  test "Should not create empty post" do
     	  post = Post.new
        post.save
        refute post.valid?
    end
    #   assert true
    test "Posts should have title and content" do
        post = Post.new
        post.title= 'Hike'
        post.content= 'Went hiking in Iceland'
        post.save
        assert post.valid?
      end

  # assert not true
    test "Should not save posts with no title" do
      post = Post.new
      post.title= ''
      post.content= 'Went hiking in Iceland'
      post.save
      refute post.valid?
    end

    test "Should not save posts with no content" do
      post = Post.new
      post.title= 'Hike'
      post.content= ''
      post.save
      refute post.valid?
    end
end
