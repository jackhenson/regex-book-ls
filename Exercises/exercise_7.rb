# Challenge: write a method that changes dates 
# in the format 2016-06-17 or 2016/06/17 
# to the format 17.06.2016. 
# You must use a regular expression and should 
# use methods described in this section.

# Example:

# format_date('2016-06-17') # -> '17.06.2016'
# format_date('2017/05/03') # -> '03.05.2017'
# format_date('2015/01-31') # -> '2015/01-31' (no change)

# FIRST ATTEMPT
# def format_date(str)
#   str.gsub(/\A(\d{4})[\-\/]?(\d{2})[\-\/]?(\d{2})/, '\3.\2.\1')
# end

# GIVEN SOLUTION
def format_date(original_date)
  original_date.sub(/\A(\d\d\d\d)-(\d\d)-(\d\d)\z/, '\3.\2.\1')
               .sub(/\A(\d\d\d\d)\/(\d\d)\/(\d\d)\z/, '\3.\2.\1')
end

p format_date('2016-06-17') # -> '17.06.2016'
p format_date('2017/05/03') # -> '03.05.2017'
p format_date('2015/01-31') # -> '2015/01-31' (no change)