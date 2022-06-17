class CommentController < ApplicationController
  def create
    post = Post.find(comments_params[:post_id])
    comment = post.comments.create!(user_id: 1, content: comments_params[:content])
    comment.broadcast_prepend_to(post,:comments)
    redirect_to root_path
  end

  private 
    def comments_params 
      params.require(:comment).permit(:post_id, :content)
    end
end
