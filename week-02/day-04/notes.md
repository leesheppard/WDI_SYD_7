Week 02, Day 04
===============
### 20 / 11 / 2014

WHAT WE COVERED
---------------

* [Morning Exercise](https://gist.github.com/FluffyJack/161e1717fff648b73b56)
* Inject Method
* Splats
* LABS ALL DAY!

DETAILS
-------

#### Splats

###### SPLATS AS PARAMETERS
You use a splat parameter to gather up any remaining arguments and store them in an array.  **ARRAY MACHINE!**

```ruby
def say(what, *people)
  people.each{|person| puts "#{person}: #{what}"}
end
 
say "Hello!", "Alice", "Bob", "Carl"
\# Alice: Hello!
\# Bob: Hello!
\# Carl: Hello!
```

"Hello!" is stored as "what" and all of the remaining parameters are stored as "people"

###### SPLATS FOR MULTIPLE VARIABLE ASSIGNMENT

This is also works for multiple variable assignment.  This is very handy!

```ruby
x, y = [20, 10]
\# x = 20
\# y = 10

x, *y = [20, 4, 30, 20, 14]
\# x = 20
\# y = [4, 30, 20, 14]

###### SPLATS TO FLATTEN ARRAYS

```ruby
some_numbers = [1, 2, 3]
up\_to\_five = [*some\_numbers, 4, 5]
p up\_to\_five
\# [1, 2, 3, 4, 5]
```

###### SPLATS FOR ARRAY COERCION

```ruby
up\_to\_ten = *1..10
p up\_to\_ten
\# [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

\# This works well, but if I see someone use it in the following way - I might just cry

string = *"Hello" \# Instead of string = ["Hello"].  Aim for readability!

```

#### INJECT METHOD

A very weird method - but examples tend to explain it best.

```ruby
[5, 6, 7, 8].inject(0) { |current\_sum, next\_element|
  current\_sum + next\_element
}
\# This results in 26 but lets figure out why
```

**Step 1**

We first specify a starting point - i.e. the zero in the brackets.  This serves as the first "current\_sum".  The first value of "next\_element" is the first element in the array.  

The block looks like this during the first iteration - { |0, 5| 0 + 5 }

**Step 2** 

current\_sum and next\_element are added during every iteration, so:

{ |5, 6| 5 + 6 }

This continues until the last element - all of these variables are being assigned temporary variables until the final iteration.

**Step 3** 

The current\_sum is assigned a permanent value of 26 and returned.


**ANOTHER EXAMPLE OF INJECT**

```ruby
a = [5, 6, 7, 8].inject([]) do |result\_memo, element|
 result\_memo  <<  element.to\_s if element % 2 == 0
 result\_memo
end
```

In this, it's starting point is an empty array.
The first iteration = element is equal to 5 so it gets ignored
The second iteration = element is 6 so it gets added to result\_memo (which eventually gets returned)
The third iteration = element is 7 - ignored
The fourth iteration = element is 8 is added and then returned.