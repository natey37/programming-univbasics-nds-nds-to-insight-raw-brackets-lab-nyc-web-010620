$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

#puts pp directors_database
def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  directors_hash = {} 
  inner_index = 0
  
  while inner_index < nds.count do 
    director = nds[inner_index][:name]
    directors_hash[director] = 0 
    outer_index = 0 
    while outer_index < nds[inner_index][:movies].count do 
      directors_hash[director] += nds[inner_index][:movies][outer_index][:worldwide_gross]
      outer_index += 1 
    end 
    inner_index += 1 
  end 
  puts directors_hash
  directors_hash
end