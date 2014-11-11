# ========== #
# TEST CASES #
# ========== #


year = 1900 # Not a leap year
# year = 1997 # Not a leap year
# year = 1996 # A leap year
# year = 2000 # A leap year


# Remember!
  # Using the && operator (AND) requires both sides of the conditional to be true for it to evaluate to true
  # Using the || operator (OR) requires only side to be true for it to evaluate to true

if year % 4 == 0 && ( year % 100 != 0 || year % 400 == 0 )
  # This requires a couple of things to evaluate to true:
    # Firstly, it needs to have no remainder when divisible by 4
    # Secondly, when divided by 100 - it must have a remainder - unless it is also divisble by 400
  puts "#{year} is a leap year"
else 
  puts "#{year} isn't a leap year"
end


# Extra Things:
  # To uncomment or comment using sublime - use Cmnd + /
    # This works with multiple lines as well