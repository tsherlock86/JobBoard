require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "the truth" do
     assert true
  end

  test "test_should_not_save_post_without_title" do
    post = Post.new
    assert !post.save, "Saved the post without a title"
  end

end
