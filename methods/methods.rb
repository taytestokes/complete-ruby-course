# Methods

# Define custom methods
# the last evaluated expression/statement will be returned
def multiply(num_one, num_two)
    puts num_one.to_f * num_two.to_f
end

def add(num_one, num_two)
    puts num_one.to_f + num_two.to_f
end

def subtract(num_one, num_two)
    puts num_one.to_f - num_two.to_f
end

def divide(num_one, num_two)
    puts num_one.to_f / num_two.to_f
end

def mod(num_one, num_two)
    puts num_one.to_f % num_two.to_f
end

# Call the methods
multiply(10,5)
add(10,5)
subtract(10,5)
divide(10,5)
mod(10,5)