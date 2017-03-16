class Home < ApplicationRecord
def self.tabs

# Use the class methods to get down to business quickly
# http://www.brainyquote.com/quotes/authors/e/elon_musk.html
response = HTTParty.get('http://www.thehindu.com/news/')

# Get a Nokogiri::HTML::Document for the page we’re interested in...

doc = Nokogiri::HTML(response.body)

# Do funky things with it using Nokogiri::XML::Node methods...

####
# Search for nodes by css
quotes = []
doc.css('.hidden-xs , li , a').each do |news|
	quotes << news.inner_html
end
quotes.take(10)
end
end