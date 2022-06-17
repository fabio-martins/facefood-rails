class HomepageController < ApplicationController
  before_action :set_logged_user

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def set_logged_user
    if session[:current_user].nil?
      session[:current_user] = User.all.sample
    end  
  end
end
