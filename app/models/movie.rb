class Movie < ApplicationRecord

def self.scrape

# Use the class methods to get down to business quickly
# http://www.brainyquote.com/quotes/authors/e/elon_musk.html
response = HTTParty.get('http://www.imdb.com/chart/top')

# Get a Nokogiri::HTML::Document for the page we’re interested in...

doc = Nokogiri::HTML(response.body)

# Do funky things with it using Nokogiri::XML::Node methods...

####
# Search for nodes by css
quotes = []
doc.css('.titleColumn a').each do |movie|
	quotes << movie.inner_html
end

quotes
#can do quotes.sample too

end

def self.imdb
response = HTTParty.get('http://www.imdb.com/chart/top')

# Get a Nokogiri::HTML::Document for the page we’re interested in...

doc = Nokogiri::HTML(response.body)

# Do funky things with it using Nokogiri::XML::Node methods...

####
# Search for nodes by css
quotes = []
doc.css('.titleColumn a').each do |movie|
	quotes << movie.inner_html
end

quotes
#can do quotes.sample too

end
end