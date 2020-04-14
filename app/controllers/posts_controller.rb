class PostsController < ApplicationController
  def index
    @posts = Post
               .where("title LIKE ?", params.fetch(:query, "") + "%")
               .page(params[:page]).per(4)

    if params[:order]
      @posts = @posts.order(title: params[:order])
    end
  end

  def show
    @post = Post.find(params[:id])
  end
end
