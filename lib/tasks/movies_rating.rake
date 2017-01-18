desc "Fetch product prices"
task :fetch_rating => :environment do
  require 'nokogiri'
  require 'open-uri'  
  Movie.find_all_by_rating(nil).each do |movie|
    escaped_movie_name = CGI.escape(movie.name)
    url = "http://www.imdb.com/chart/top"
 
	doc = Nokogiri::HTML(open(url))
	doc.css(".article").each do |article|
	puts doc.at_css("title").text
	  title = article.at_css(".lister , .titleColumn, a").text
	  rating = article.at_css(".lister , .imdbRating, strong").text[/\$[0-9\.]+/]
	  puts "#{title} - #{rating}"
	end
	end
end