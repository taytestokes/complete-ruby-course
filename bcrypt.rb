# make sure to bring in tha gem
require 'bcrypt'

# this uses bcrypt to crypt a passowrd
my_password = BCrypt::Password.create("my password")
# => "$2a$12$K0ByB.6YI2/OYrB4fQOYLe6Tv0datUVf6VZ/2Jzwm879BW5K1cHey"

# use this to verify a password
my_password = BCrypt::Password.new('$2a$10$abbXFj6bBN2QL9aaeB2jk.RObVpJ6NkhvFLRdIL91nD2GsZM1nt6q')

# dummy data
users = [
    {username: "user1", password: "user1"},
    {username: "user2", password: "user2"},
    {username: "user3", password: "user3"}
]

# methods to create and verify hash
def create_hash_digest(password)
    BCrypt::Password.create(password)
end

def verify_hash_digest(password)
    BCrypt::Password.new(password)
end

def create_secure_users(list_of_users)
    # loop through users
    list_of_users.each do |user_record|
        # create a hashed password for the user
        user_record[:password] = create_hash_digest(user_record[:passowrd])
    end
    # return the modified list of users
    list_of_users
end

puts create_secure_users(users)