class PostController < ApplicationController
  def create
    post = Post.new(params_post)
    post.user_id = 1
    post.save!
    post.broadcast_prepend_to( post, partial: "posts/list" )
    redirect_to root_path
  end

  private 
    def params_post 
      params.require(:post).permit(:content)
    end
end
