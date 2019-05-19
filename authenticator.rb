# Dummy User Data
users = [
    {username: "user1", password: "user1"},
    {username: "user2", password: "user2"},
    {username: "user3", password: "user3"}
]

# Start of script 
puts "Welcome to the authenticator"
30.times {print "-"}
puts
puts "This program will ask for a username and password."
puts "It will return the user object is username and password are correct"

attempts = 1
while attempts < 4
    puts "Username: "
    username = gets.chomp
    puts "Password: "
    password = gets.chomp
    # loop through user array to authenticate
    users.each do |user|
        if user[:username] == username && user[:password] == password
            puts user
        else 
            puts "Credentials were not correct"
        end
    end
    # check to see if the user wants to keep going
    puts "Press n to quit or any other key to keep going:"
    input = gets.chomp.downcase
    # break out of loop
    break if input == "n"
    # increment attempts
    attempts += 1
end