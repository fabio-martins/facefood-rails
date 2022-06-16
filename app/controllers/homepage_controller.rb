class HomepageController < ApplicationController
  before_action :set_logged_user

  def index
    @posts = Post.all
  end

  def set_logged_user
    if session[:current_user].empty?
      session[:current_user] = User.all.sample
    end  
  end
end
