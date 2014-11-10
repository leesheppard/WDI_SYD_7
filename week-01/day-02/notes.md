Week 01, Day 02
===============
### 11 / 11 / 2014

WHAT WE COVERED
---------------

* Warm up Exercises - Leap Year stuff
* More conditionals - case statements, while statements
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
puts "\nWhat is 2 to the power of 16?\n"
answer = gets.chomp.to_i

while ( 2**16 ) != answer
  puts "Wrong, try again!\n"
  answer = gets.chomp.to_i
end

puts "\nGood job.  You got it right!"
```

##### Until Statements

* Quite similar to while again
* Often used to avoid != (i.e. not equal to)

```ruby
until (2**16) == answer
  puts "Wrong! Try again.\n"
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



