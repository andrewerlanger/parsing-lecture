require 'json'

# TODO - let's read/write data from beers.json
filepath    = 'data/beers.json'

beers_as_string = File.open(filepath).read

# Deserializing
beers_as_hash = JSON.parse(beers_as_string)

beers_as_hash["beers"].each do |beer|
  puts "#{beer["name"]} is a #{beer["appearance"]} from #{beer["origin"]}"
end

new_beer = {"name"=>"Augustiner Helles", "appearance"=>"White", "origin"=>"Germany"}
beers_as_hash["beers"] << new_beer

File.open(filepath, "wb") do |file|
  # Serializing
  beers_as_string = JSON.generate(beers_as_hash)
  file.write(beers_as_string)
end
