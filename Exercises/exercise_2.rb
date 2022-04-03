# Write a method that returns all of the fields 
# in a haphazardly formatted string. A variety 
# of spaces, tabs, and commas separate the fields, 
# with possibly multiple occurrences of each delimiter.

# Examples:

# fields("Pete,201,Student")
# # -> ["Pete", "201", "Student"]

# fields("Pete \t 201    ,  TA")
# # -> ["Pete", "201", "TA"]

# fields("Pete \t 201")
# # -> ["Pete", "201"]

# fields("Pete \n 201")
# # -> ["Pete", "\n", "201"]

def fields(str)
  str.split(/[ \t,]+/)
end

p fields("Pete,201,Student")
# -> ["Pete", "201", "Student"]

p fields("Pete \t 201    ,  TA")
# -> ["Pete", "201", "TA"]

p fields("Pete \t 201")
# -> ["Pete", "201"]

p fields("Pete \n 201")
# -> ["Pete", "\n", "201"]