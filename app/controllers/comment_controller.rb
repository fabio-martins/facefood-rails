class CommentController < ApplicationController
  def create
    post = Post.find(comments_params[:post_id])
    post.comments.create!(user_id: 1, content: comments_params[:content])
  end

  private 
    def comments_params 
      params.require(:comment).permit(:post_id, :content)
    end
end
