class HomeController < ApplicationController
skip_before_filter :verify_authenticity_token
before_action :authenticate_user!
  def index
  	 # @posts = Post.all
      @posts = Post.order("name").page(params[:page]).per(4)
      end
  def tabs 
  	@news = Home.tabs
  	binding.pry
  end
end
