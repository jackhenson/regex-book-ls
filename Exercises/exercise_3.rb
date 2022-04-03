# Write a method that changes the first arithmetic 
# operator (+, -, *, /) in a string to a '?' and 
# returns the resulting string. Don't 
# modify the original string.

# Examples:

# mystery_math('4 + 3 - 5 = 2')
# # -> '4 ? 3 - 5 = 2'

# mystery_math('(4 * 3 + 2) / 7 - 1 = 1')
# # -> '(4 ? 3 + 2) / 7 - 1 = 1'

def mystery_math(str)
  str.sub!(/[+\-*\/]/, '?')
end

p mystery_math('4 + 3 - 5 = 2')
# -> '4 ? 3 - 5 = 2'

p mystery_math('(4 * 3 + 2) / 7 - 1 = 1')
# -> '(4 ? 3 + 2) / 7 - 1 = 1'