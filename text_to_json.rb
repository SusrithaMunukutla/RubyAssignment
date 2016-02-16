# Read a File and convert a data to json, also put that converted data to a new file 
require 'json'
array = File.readlines('text.txt').flat_map(&:split) # Read text.txt


test = {
  "strings" => array
}.to_json   # convert to json


 output = File.open("New_Copy.json", 'w') #Create a new file 
 output.write(test) # Write data to the new file
