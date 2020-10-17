require 'open-uri'
require 'nokogiri'

# Let's scrape recipes from http://www.epicurious.com
url = "https://www.epicurious.com/recipes-menus"

response_as_string = URI.open(url).read

doc = Nokogiri::HTML(response_as_string)

recipes = doc.search(".view-complete-item")

recipes.each do |recipe|
  puts recipe.text.gsub("View ", "")
end