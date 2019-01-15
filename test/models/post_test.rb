require 'test_helper'

class PostTest < ActiveSupport::TestCase
  BODY_TEXT = "Anyone interested in going to northstar this weekend? There's a fat storm coming in!!"
  def setup
    @post = Post.new(title: "Northstar this weekend?", body: BODY_TEXT, user_id: 2)
  end

  test "post should have title" do
    @post.title = ' '
    assert_not @post.valid?, "please add a proper title"
  end

  test "post body should be at least 10 characters" do
    @post.body = 'a'
    assert_not @post.valid?, "post body text needs at least 10 characters"
  end

  test "post should have an author id" do
    @post.user_id = nil
    assert_not @post.valid?, "post must have an author"
  end
end
