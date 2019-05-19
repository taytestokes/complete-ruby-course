dial_book = {
    "newyork" => "212",
    "newbrunswick" => "732",
    "edison" => "908",
    "plainsboro" => "609",
    "sanfransico" => "301",
    "miami" => "305",
    "paloalto" => "650",
    "evanston" => "847",
    "orlando" => "407",
    "lancaster" => "717"
}

# Get City Names From The Hash
def get_city_names(somehash)
    somehash.keys
end

# Get Area Code Based On Given Hash And Key
def get_area_code(somehash, key)
    somehash[key]
end

# execution flow
loop do
    puts "Do you want to lookup an area code based based on a city name?"
    puts "(Y/N)"
    answer = gets.chop.downcase
    break if answer != "y"
    puts get_city_names(dial_book)
    puts "Enter your selection: "
    selection = gets.chop.downcase
    if dial_book.include?(selection)
        puts "The area code for #{selection} is #{get_area_code(dial_book, selection)}"
    else
        puts "You enetered an invalid city name"
    end
end