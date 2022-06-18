class CommentController < ApplicationController
  def create
    post = Post.find(comments_params[:post_id])
    current_user = session[:current_user]["id"]
    comment = post.comments.create!(user_id: current_user, 
                                    content: comments_params[:content])
    redirect_to root_path
  end

  private 
    def comments_params 
      params.require(:comment).permit(:post_id, :content)
    end
end
