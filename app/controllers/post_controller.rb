class PostController < ApplicationController

  #define the index
  def index
  @posts = Post.all #pulls all the data
  end

  def create
    @post = Post.new(post_params) #Post params are being used to check any newcomers that follow the below method

  end

  private

  def post_params
    params.require(:post).permit(:title, :description)
  end




end
