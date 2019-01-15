require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    @comment = Comment.new(user_id: 1, body: "sample comment here")
  end

  test "comment body should not be empty" do
    @comment.body = ' '
    assert_not @comment.valid?, "the comment can't be empty"
  end

  test "comment must be tied to an existing user" do
    @comment.user_id = nil
    assert_not @comment.valid?, "comment must be written by a user"
  end

  test "comment must have a post id" do
    @comment.post_id = nil
    assert_not @comment.valid?, "comment has invalid post id of #{@comment.post_id}"
  end
end
