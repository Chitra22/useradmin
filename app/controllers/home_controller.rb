class HomeController < ApplicationController
skip_before_filter :verify_authenticity_token

  def index
  	@posts = Post.all
  end
end
