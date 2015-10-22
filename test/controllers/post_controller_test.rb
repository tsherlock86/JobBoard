require 'test_helper'

class PostControllerTest < ActionController::TestCase

  def setup
    @controller = PostsController.new
    @post = posts(:one)
  end

   test "the truth" do
     assert true
   end

  test "should_go_to_homepage" do
    get :index
    assert_response :success
    assert_not_nil assigns (:posts)
  end

  test "assert_difference" do
    assert_difference('Post.count') do
      post :create, :post => { :title => "hola", :description => "here"}
    end
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should show post" do
    get :show, id: @post.id
    assert_response :success
  end

end
