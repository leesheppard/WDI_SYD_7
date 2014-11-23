my_array = [1, 2, 3]
my_array.all? { |x| x.is_a? Fixnum }
my_array.is_a? Array #=> true

my_array.class #=> Array