class PostsController < ApplicationController
  before_action :set_post, only: [:show]

  #define the index
  def index
  @posts = Post.all #pulls all the data
  end

  def show

  end


  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params) #Post params are being used to check any newcomers that follow the below method
    if @post.save
      redirect_to :root
    end
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :description)
  end
  
end
