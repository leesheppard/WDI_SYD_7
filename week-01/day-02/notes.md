Week 01, Day 02
===============
### 11 / 11 / 2014

WHAT WE COVERED
---------------

* Warm up Exercises - Leap Year stuff
* More conditionals - case statements, while statements, until, begin, unless
* Pry - use this over IRB!
* Loops (iteration)
* Arrays
* Methods and Arguments


DETAILS
-------

##### Case Statements

* You must have a case - often a string but it doesn't have to be
* You can have conditionals in a when statement

```ruby
print "Enter your grade: "
grade = gets.chomp

case grade
when "A"
  puts 'Well done!'
when "B"
  puts 'Try harder!'
when "C"
  puts 'You need help!!!'
else
  puts "You're just making it up!"
end
```

##### While Statements

* Will continue until the condition evaluates to true
* Beware of infinite loops!

```ruby
puts "What is 2 to the power of 16?"
answer = gets.chomp.to_i

while ( 2**16 ) != answer
  puts "Wrong, try again!"
  answer = gets.chomp.to_i
end

puts "Good job.  You got it right!"
```

##### Until Statements

* Quite similar to while again
* Often used to avoid != (i.e. not equal to)

```ruby
until (2**16) == answer
  puts "Wrong! Try again."
  answer = gets.chomp.to_i
end

puts "Great Job!"
```

##### Begin Statements

* The reverse of a while statements
* Doesn't have to end with a while - can also be until etc.

```ruby
begin
  puts "What is the result of 2 to the power of 16?"
  answer = gets.chomp.to_i
end while ( 2**16 ) != answer
```

##### Arrays

* These are lists
* Can be any data type - but often based to keep it one (as in, all strings etc.)
* Remember!  The first element is actually the zeroeth element

```ruby
array = ["This", "is", "an", "array"]
array[0] # This will return "This"
```

###### Making variables from arrays
* If an element is undefined - it will return nil

```ruby
array = ["This", "is", "an", "array"]
first\_array\_string = array[0] # Or array.first
last\_array\_string = array.last # Or array[-1]

latlng = [132.12, 154.3232]
lat, lng = latlng # lat will be defined as the first thing in latlng, lng will be defined as the second thing

height_array = [180]
height, weight = height_array # height will be defined as 180, weight will be defined as nil

lots\_of\_things = [1, 2, 3, 4, 5, 6]
thing\_one, thing\_two, *things = lots\_of\_things # thing\_one is 1, thing\_two is 2, things is an array of whatever is left
```

##### Methods

One of the best things in coding. 

Allows for DRY coding (i.e. **D** on't **R** epeat **Y** ourself)

Super helpful for making code reusable.
* Also useful for abstracting logic to make code more readable (this is important)  

It always returns something
* If the method name is suffixed with a ? - it returns true or false

You must call methods!! They don't run automatically

```ruby
def leap_year?(year)
  year % 4 == 0 && ( year % 100 != 0 || year % 400 == 0 )
end

def leap_year_check(year)
  if leap_year? year
    puts "#{year} is a leap year"
  else 
    puts "#{year} is not a leap year"
  end
end

leap_year_check(1997)
leap_year_check(1996)
leap_year_check(2000)
leap_year_check(1900)
```
Ideally, you have lots of small methods - rather than big methods

##### There are methods for everything! Currently 14934 Methods

Common Methods for arrays:
```ruby
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array.shuffle # returns a shuffled version, if suffixed with a ! - it becomes destructive
array.count # Tells you how many elements exist in the array, length and size do the same thing
array.first # returns the first thing
array.push(11) # adds another piece of data into the end of the array
array.pop # In its simple form - it removes the last element.  But you can do a lot more with it.
array.shift # Removes the first element in its simplest form.  
array.unshift(1) # Adds an element at the start - this must take a parameter!
array.sample # Returns a random element
array.reverse # Flips it around
array.join(', ') # Turns it into a string, and connects the elements with whatever is passed in.
array.uniq # Returns the unique properties in an array
array.empty? # Returns true if the array is empty
array.slice(1) # This removes the thing in position 1, can do a lot more!
```

[Check some more out here!](http://www.ruby-doc.org/core-2.1.4/Array.html)

  to_a - can be used to turn things into an array
  (1..10).to_a
  (1...10).to_a
  ("a".."z").to_a


  0.step(100, 10).to_a
  10.downto(1).to_a
  1.upto(10).to_a

#### Iterating through things!

###### For Loops



###### Each Loops (PREFERRED OVER FOR LOOPS FOR ITERATING OVER ARRAYS)
```ruby
my_array = [1, 2, 3, 4, 5, 6]

my_array.each { |x| puts "This is number #{x}" } # SAME AS BELOW

my_array.each do |x| # I PREFER THIS METHOD
  puts "This is number #{x}"
end
```

###### Map Loops
```ruby
my_array = [1, 2, 3, 4, 5, 6]

puts my_array.map { |x| x * x } # SAME AS BELOW

my_array.map do |number|
  puts "This is number #{number}"
end
```

#### Ruby Tidbits

###### Ruby Escape Sequences

These are some of the more common ones.  Often used to clean up your responses and puts.
They can only be used in double quotes!!  

* \" – double quote
* \\ – single backslash
* \a – bell/alert
* \b – backspace
* \r – carriage return
* \n – newline
* \s – space
* \t – tab

###### Type Coercion Methods in Ruby

to_i
to_f
to_a
to_s


