# hashes are dictionaries in ruby
# hasheds use key/value pairs
# hashes are wrapped in curly braces
# hashes use hash rocket to determine the value for a pair

myHash = {'name' => 'tayte', 'age' => 21}

# accessing data in hashes
p myHash['name'] # this will return 'tayte'

# this is a block that will loop through the hash
myHash.each do |key, value| 
    puts "The key is #{key}, the value is #{value}"
end