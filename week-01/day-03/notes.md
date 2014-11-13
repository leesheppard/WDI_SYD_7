Week 01, Day 03
===============
### 12 / 11 / 2014

WHAT WE COVERED
---------------

* [Warm up Exercises - Roman Numerals](https://gist.github.com/FluffyJack/06a38a2b504a6ccdd4c7)
* Arrays
* Iterating through Arrays
* Hashes
* [Array and Hash Access Exercise](https://gist.github.com/FluffyJack/9ca8d63535ffefb33079)
* Map Method
* Each Method
* Downto, Upto, Times
* Split Method
* Join Method
* Return


DETAILS
-------


#### Roman Numerals

Lots of way to approach this.  Some people began with switch statements or large if statements.
There is no problem with that, just not quite as efficient as possible.

The approach we have taken is using the method "gsub"...  In it's most basic form:
* It takes two parameters, typically two strings - often a regular expression (which we will get into later)
* If you are using two strings
  * The first one is saying find this string
  * The second is saying replace whatever you found with this
  * Similar to this "WDI".gsub("WDI", "IS GREAT");
    * This is saying replace the letters WDI with IS GREAT

Chaining methods is very important, it also can make code a lot more readable.  If you end a line with a . you can continue on the next line

```ruby
def to_roman(number)
  string = "I" * number
  string.gsub("I" * 1000, "M").
         gsub("I" * 900,  "CM").
         gsub("I" * 500,  "D").
         gsub("I" * 400,  "CD").
         gsub("I" * 100,  "C").
         gsub("I" * 90,   "XC").
         gsub("I" * 50,   "L").
         gsub("I" * 40,   "XL").
         gsub("I" * 10,   "X").
         gsub("I" * 9,    "IX").
         gsub("I" * 6,    "VI").
         gsub("I" * 5,    "V").
         gsub("I" * 4,    "IV")
end

puts to_roman(1024)
puts to_roman(3000)
puts to_roman(911)
puts to_roman(575) 
``` 

#### Arrays

###### What are they?
* Ordered, integer-indexed lists of any data-types
* The integers that index the lists always start at 0!  You will forget this at least 40 times over the next 3 months.
  * i.e. array[0] is the first, array[1] is the second
  * n.b. array[-1] is the last, array[-2] is the second last

###### Creating Arrays

Many ways, the most common one is the literal constructor:

```ruby
array = []
array = ["This", 15, "an", "array"]
```

The Array.new method

```ruby
array = Array.new
array = Array.new(3) # Results in [nil, nil, nil]
array = Array.new(3, true) # Results in [true, true, true]
```

Using the Array constructor

```ruby
Array(1) # Results in [1]
Array({a: "Tiger", b: "Jaw"}) # Results in [[:a, "Tiger"], [:b, "Jaw"]]
```

###### Accessing Arrays

Always a bunch of ways - which is the same with everything in programming.
Most common way is to use the [] method.  That can take a bunch of things:
* A numeric index i.e. one number
* A pair of arguments i.e. start and length
* Or a range i.e. from 1 to 3
* N.B. no one uses it by you can also use the .at(__) method
  * This can be used in the exact same way

```ruby
arr = [1, 2, 3, 4, 5, 6]
arr[2] # Returns 3
arr[100] # If nothing exists at the index, it will return nil
arr[-1] # The last thing - 6
arr[-3] # The third last number - 4
arr[2, 3] # starts at index and selects 3 elements. Returns [3, 4, 5]
arr[1..4] # A range - selects [2, 3, 4, 5]
```

There are ways to raise errors if nothing exists at a particular index.  You do this with .fetch

```ruby
arr = [1, 2, 3, 4, 5, 6]
arr.fetch(100) # This doesn't exist, so it returns an IndexError
arr.fetch(100, "crap!") # Same as above, but specifies what to return 
```

You can also get elements quite simply using built in methods

```ruby
arr.first # will always get the first element
arr.last # will always get hte last element
arr.take(3) # will select the first 3 elements and return an array of them
arr.drop(3) # Returns the elements after 3 have been skipped
```

###### Getting Information

A whole bunch of methods:

```ruby
arr.length # These are all the same - just get the amount of elements
arr.count
arr.size

arr.empty? # Checks to see whether the array is empty

arr.include?("Something") # Checks to see whether it includes a particular thing (Doesn't have to be a string)
arr.index("Something") # Finds the index of something if it is found, or returns false

arr.select { |num| num.even? } # Returns an array of elements that pass the block
``` 

###### Adding Items

A heap of ways yet again:

```ruby
arr.push(6) # Adds it at the end
arr << 6 # Same as above

arr.unshift(6) # Adds it at the start

arr.insert(3, 6) # Inserts 6 at the third index
arr.insert(3, "Oh", "Ruby", "you", "are", "such", "an", "angel!") # Works the same, starts at the 3 index and adds them all in
```

###### Removing an Item

A heap of ways yet again!

```ruby
arr.pop # takes the last item
arr.shift # takes the first item
arr.delete_at(2) # removes the item at index 2
arr.delete(2) # removes all instances of 2
arr.compact # removes all "nil" 
arr.uniq # shows only unique items
```


###### Iterating through Arrays

Two very common ways:
Each is most commonly used for doing something with an element but not directly altering it
* You can do anything you would like with this, very helpful.  Could be faked with for loops etc. but it is convention in ruby to use each.  
* This leaves the array unchanged!

Map is used to directly alter an element
* Pretty amazing
* This is a way to modify the array

```ruby
arr.each do |current_element|
  # do something with the current element
end

\# OR

arr.each { |current| puts current }

arr.map do |current_element|
  # do something with the current element
end

\# OR

arr.map { |current| puts current }
```

#### Downto, Upto, Times

###### Downto

Very possible to recreate with the loops we have learnt, but quite a nice feature. 
* You can pass any block in

```ruby
5.downto(1) { |n| print n, ".. " }
\# Prints "5.. 4.. 3.. 2.. 1..   Liftoff!"
```

###### Upto

Same as above

```ruby
5.upto(10) { |i| print i, " " }
\# Prints 5 6 7 8 9 10
```

###### Times

Same as both above!  This one is very handy

```ruby
5.times do |i|
  print i, " "
end
```

###### Split Method

This is a method to split a string on a specified string or regular expression.
* It returns an array of all the substrings!
* Can do a lot more... [Look at this link!](http://www.ruby-doc.org/core-2.1.4/String.html#split-method)

```ruby
"J,a,c,k".split(',') # Returns ["J", "a", "c", "k"]
```

###### Join Method

This is an array method that returns a string of all of the elements in the array.
* It almost does the opposite of split
* If you call the join method with no parameter
  * It just puts the things right next to each other
* If you call the method with a parameter
  * It seperates each item with the given "seperator"

```ruby
[ "a", "b", "c" ].join        # "abc"
[ "a", "b", "c" ].join("-")   # "a-b-c"
```


#### Hashes (or objects)

###### What is it?

A dictionary! Occasionally called assosciative arrays.  But basically it is just a list of keys and values.
The main differences betweens arrays and hashes are:
* Arrays requires an index for referencing, whereas hashes can use any data type
* Arrays can't have keys and values

###### How to create them

A bunch of ways:

```ruby
\# This is the implicit way
this_is_a_hash = { 
  "Name" => "Wolf",
  "Age" => "Unknown"
}

\# This uses the Hash.new method
hasho_mate = Hash.new

\# You can use symbols as keys
this_is_a_hash = { 
  :name => "Wolf",
  :age => "Unknown"
}

\# But that could also be written as this:
\# You don't need to specify the fact that they are symbols, that happens automatically in Ruby
this_is_a_hash = { 
  name => "Wolf",
  age => "Unknown"
}

```

You can give a default value by saying:

```ruby
people = {"Timmy Doe" => 8}
people.default = "agrees, Wolf's epic"
puts people[:Jane Birkin] # Returns "agrees, Wolf's epic"
```

###### Accessing Hashes

Lots of methods

```ruby
names = { "name1" => "Jane", "name2" => "Alexandra" }
names["name1"]

names = { :birkin => "Jane", :agoston => "Alexandra" }
names[:birkin] # Returns "Jane"
names["birkin".to_sym] # Same as above, turns a string into a symbol

```

###### Common Methods with Hashes in Ruby

**Each**
```ruby
people = {
  "Jane Birkin" => "An angel",
  "Fluffy Jack" => "A genius"
}

people.each do |key, value|
  puts "#{key} is #{value}"
end

\# OR

people.each { |key, value| puts "#{key} is #{value}" }
```

* [**each_key**](http://www.ruby-doc.org/core-2.1.4/Hash.html#each_key-method)
  * Iterates through every key in the hash
* [**each_pair**](http://www.ruby-doc.org/core-2.1.4/Hash.html#each_pair-method)
  * Iterates through every key and value in the hash
* [**each_value**](http://www.ruby-doc.org/core-2.1.4/Hash.html#method-i-each_value)
  * Iterates through every value in the hash
* [**empty?**](http://www.ruby-doc.org/core-2.1.4/Hash.html#method-i-empty-3F)
  * Checks to see if it is an empty hash
* [**flatten**](http://www.ruby-doc.org/core-2.1.4/Hash.html#method-i-flatten)
  * Turns it into an array
* [**has_key?**](http://www.ruby-doc.org/core-2.1.4/Hash.html#method-i-has_key-3F)
  * Checks to see if a key exists
* [**has_value?**](http://www.ruby-doc.org/core-2.1.4/Hash.html#method-i-has_value-3F)
  * Checks to see if a value exists in the hash
* [**invert**](http://www.ruby-doc.org/core-2.1.4/Hash.html#method-i-invert)
  * Flips the keys and values around
* [**length**](http://www.ruby-doc.org/core-2.1.4/Hash.html#method-i-length)
  * checks to see how many key and value pairs exist
* [**delete**](http://www.ruby-doc.org/core-2.1.4/Hash.html#method-i-delete)
  * deletes a key and value pair with the key
* [**merge**](http://www.ruby-doc.org/core-2.1.4/Hash.html#method-i-merge)
  * Combines two hashes
* [**shift**](http://www.ruby-doc.org/core-2.1.4/Hash.html#method-i-shift)
  * Takes away the first key and value pair