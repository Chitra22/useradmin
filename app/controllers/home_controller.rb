class HomeController < ApplicationController
	skip_before_action :authenticate_user!, raise: false

  def index
  	@posts = Post.all
  end
end
