require 'csv'

# TODO - let's read/write data from beers.csv
original_filepath = 'data/beers.csv'

beers = []

CSV.foreach(original_filepath) do |row|
  beers << row
end

beer_1 = ["Sterni", "Brown", "Germany"]
beer_2 = ["James Squire", "Golden", "Australia"]

beers << beer_1
beers << beer_2

CSV.open(original_filepath, "wb") do |file|
  beers.each do |beer|
    file << beer
  end
end