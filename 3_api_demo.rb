require 'json'
require 'open-uri'

# TODO - Let's fetch name and bio from a given GitHub username
base_url = 'https://api.github.com/users'

puts "What is your GitHub username?"
print "> "
username = gets.chomp

url = "#{base_url}/#{username}"

response_as_string = URI.open(url).read

response_as_hash = JSON.parse(response_as_string)

puts "You have #{response_as_hash["followers"]} followers and are following #{response_as_hash["following"]} other users"