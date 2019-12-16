require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  test "Should not create empty Comment" do
      comment = Comment.new
      comment.save
      refute comment.valid?
  end

  test "Should save comments with name" do
      assert Comment.new(name: 'Xim', comment: 'Your trip sounds awesome').save
    end
# assert not true
  test "Should not save comments with no name" do
      assert_not  Comment.new(comment: 'Your trip sounds awesome').save
    end

  test "Should not save comments with no description" do
      assert_not Comment.new(name: 'Xim').save
  end
      # end
  #   assert true
  # end
end
