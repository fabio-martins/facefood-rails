class HomepageController < ApplicationController
  before_action :set_logged_user

  def index
    if params[:query].present?
      @posts = Post.where('content ilike ?', "%#{params[:query]}%")
    else  
      @posts = Post.all.order(created_at: :desc)
    end  
  end

  def set_logged_user
    if session[:current_user].nil?
      session[:current_user] = User.all.sample
    end  
  end
end
