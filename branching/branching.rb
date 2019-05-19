# if/else

if true
    # execute code
else
    # execute other code
end

# Example

condition = true
another_condition = true

# check for two coniditions
if condition && another_condition
    puts "The condition is truthy"
else 
    puts "The condition is falsy"
end

# check for one condition
if condition || another_condition
    puts "The condition is truthy"
else 
    puts "The condition is falsy"
end

# check for false and false
if !condition && !another_condition
    puts "The condition is truthy"
else 
    puts "The condition is falsy"
end