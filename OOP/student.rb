class Student
    # we can use an attribute accessor to avoid having to use getters and setters
        attr_accessor :first_name, :last_name, :email, :username, :password
    # we can use an attribute reader to only allow the getter functionality
        # attr_reader :username, :password
    # instance variable, starts with @
        # @first_name
        # @last_name
        # @email
        # @username
        # @password

    # we can use an initialize function to set instance variables when creating an instance of the class
    def initialize(first_name, last_name, email, username, password)
        @first_name = first_name,
        @last_name = last_name,
        @email = email,
        @username = username,
        @password = password
    end


    # setter methods are what is used to store data to an instance variable
    # *** you dont need setter methods if you arfe using attribute accessor ***
        # def first_name=(name)
        #     @first_name = name
        # end

    # getter methods are what is used to return an instance variable
    # *** you dont need getter methods if you arfe using attribute accessor ***
        # def first_name
        #     @first_name
        # end

    # you will need to create a setter if using attr_readers
        # def set_username
        #     @username = "tayte1"
        # end

    # anytime you create a class, it has a default method called to_s
        # def to_s
        #     "First name: #{@first_name}"
        # end
end

# Create an instance (or object) of the student class
tayte = Student.new("tayte", "stokes", "email@email.com", "tayte1", "password1")

# how to use the attribute accessors
    # tayte.first_name = "tayte"
    # tayte.last_name = "stokes"
    # tayte.email = "someemail@email.com"