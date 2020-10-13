# We're printing the return value of tricky_number by prepending #puts when
# we invoke the method. As we look at the method, we can see the if/else statement.
# It has a conditional of true which means that the if clause will be evaluated every time.
# The assignment to number is actually quite useless because we don't use it anywhere else.

def tricky_number
    if true
        number = 1
    else
        2
    end
end

puts tricky_number