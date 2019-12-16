require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  test "Should not create empty post" do
     	  post = Post.new
        post.save
        refute post.valid?
    end
    #   assert true
    test "Posts should have name and description" do

        post = Post.new

        post.title= 'Hike'
        post.content= 'Went hiking in Iceland'

        post.save
        assert post.valid?
      end

  # assert not true
    test "Should not save activities with no name" do
        assert_not  Post.new(content: 'We went hiking in Iceland').save
      end

    test "Should not save activities with no description" do
        assert_not Post.new(title: 'Hike').save
    end

  # end
end
