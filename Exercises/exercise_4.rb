# Write a method that changes every arithmetic 
# operator (+, -, *, /) to a '?' and returns the 
# resulting string. Don't modify the original string.

# Examples:

# mysterious_math('4 + 3 - 5 = 2')           # -> '4 ? 3 ? 5 = 2'
# mysterious_math('(4 * 3 + 2) / 7 - 1 = 1') # -> '(4 ? 3 ? 2) ? 7 ? 1 = 1'


def mysterious_math(str)
  str.gsub!(/[+\-*\/]/, '?')
end

p mysterious_math('4 + 3 - 5 = 2')           # -> '4 ? 3 ? 5 = 2'
p mysterious_math('(4 * 3 + 2) / 7 - 1 = 1') # -> '(4 ? 3 ? 2) ? 7 ? 1 = 1'