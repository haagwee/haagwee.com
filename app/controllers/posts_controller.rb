class PostsController < ApplicationController
  before_action :set_post, only: [:show]

  def index
    Analytics.page(
      user_id: "anonymous_id",
      name: 'Posts'
    )
    @posts = Post.all
  end

  def show
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end
end
