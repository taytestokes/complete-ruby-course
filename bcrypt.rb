# make sure to bring in tha gem
require 'bcrypt'

# this uses bcrypt to crypt a passowrd
my_password = BCrypt::Password.create("my password")
# => "$2a$12$K0ByB.6YI2/OYrB4fQOYLe6Tv0datUVf6VZ/2Jzwm879BW5K1cHey"

# use this to verify a password
my_password = BCrypt::Password.new('$2a$10$abbXFj6bBN2QL9aaeB2jk.RObVpJ6NkhvFLRdIL91nD2GsZM1nt6q')


# create a module
module Auth
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

    def authenticate_user(username, password, list_of_users)
        # loop through the users
        list_of_users.each do |user_record|
            # check if username and password are correct
            if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
                return user_record
            end
        end
        # if the user is not found
        puts "Credentials were not correct"
    end
end