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
quotes.take(10)
end



def self.imdb
response = HTTParty.get('http://www.imdb.com/chart/top')

# Get a Nokogiri::HTML::Document for the page we’re interested in...

doc = Nokogiri::HTML(response.body)

# Do funky things with it using Nokogiri::XML::Node methods...

####
# Search for nodes by css
url = []
doc.css('.titleColumn').each do |movie|
	url << movie.children[1].attributes['href'].value
end

url.take(10)
#can do quotes.sample too

end


def self.fetch_details(url)



response = HTTParty.get(url)

# Get a Nokogiri::HTML::Document for the page we’re interested in...

doc = Nokogiri::HTML(response.body)


# Do funky things with it using Nokogiri::XML::Node methods...

####
# Search for nodes by css
ur = []
doc.css('.summary_text').each do |span|
	ur << span.text
end

ur[0].strip
#can do quotes.sample too

end

end