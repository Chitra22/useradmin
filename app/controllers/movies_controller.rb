class MoviesController < ApplicationController


  def index

  end
  def topfav
  
  		@list =Spotlite::Movie.new('0133093')
        @quote = Movie.scrape
    # @id = Movie.scrape
end
 
end
