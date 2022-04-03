# Challenge: write a method that changes strings 
# in the date format 2016-06-17 
# to the format 17.06.2016. 
# You must use a regular expression and should 
# use methods described in this section.

# Example:

# format_date('2016-06-17') # -> '17.06.2016'
# format_date('2016/06/17') # -> '2016/06/17' (no change)

def format_date(str)
  str.gsub(/(\d+?)[\-](\d+?)[\-](\d+)/, '\3.\2.\1')
end

# GIVEN SOLUTION
# def format_date(original_date)
#   original_date.sub(/\A(\d\d\d\d)-(\d\d)-(\d\d)\z/, '\3.\2.\1')
# end

p format_date('2016-06-17') # -> '17.06.2016'
p format_date('2016/06/17') # -> '2016/06/17' (no change)