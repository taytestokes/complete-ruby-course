require_relative 'bcrypt_example'

# Student Class
class Student
    # include the mixins from the module using the 'include' keyword
    include Auth
    attr_accessor :first_name, :last_name, :email, :username, :password
    def initialize(first_name, last_name, email, username, password)
        @first_name = first_name,
        @last_name = last_name,
        @email = email,
        @username = username,
        @password = password
    end
end

tayte = Student.new('Tayte', 'Stokes', "Tayte@gmail.com", 'Tayte1', 'password1')

hashed_password = tayte.create_hash_digest(tayte.password)
puts hashed_password