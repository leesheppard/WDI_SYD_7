Week 01, Day 05
===============
### 14 / 11 / 2014

WHAT WE COVERED
---------------

* Walk through of Rental Exercise
* Modules
* Multifiles
* Instance Variables
* Chat with Riley
* Review
* Creating Commands
* Exploring
* WDI Joint Happy Hour

DETAILS
-------

[Here are all todays files](https://github.com/ga-students/WDI_SYD_7/tree/master/week-01/day-05)

#### The Rental Exercise

###### Approach

* Lots of thinking comes first!  Don't jump into coding before you have thought everything through.  I heavily rely on pseudocode to direct my programs.

* Create your classes and your initialize function (remember that initialize will always call when a new instance of Building is created)

```ruby
class Building
  def initialize(parameters)
  end
end
```

* Create an array or new Buildings

```ruby
buildings = [
  Building.new("........."),
  Building.new(".........")
]
```

* Use basic TDD (Test Driven Development).  I.e. don't bite off more than you can chew, a line or two at a time and constantly check that it is working

* We are going to overwrite the to\_s method in our example.  This is so when we used the to\_s method, instead of it printing out the Building instance, it overwrote that and showed the sexy string that we created

```ruby
class Building # Defines a class.  Class names must begin with a capital letter!
  attr_accessor :name, :style, :address # Defines what attributes are accessible - the things that apply to self.  Attributes are the things that can define
  def initialize( name = "Wonderful", style = "Art Deco", address = "York Street" ) # Defines an instance method, and accepts some parameters (with defaults).  This initialize method is automatically called!
    self.name = name # Stores the name sent in on the instance
    self.style = style
    self.address = address
  end
end

building = Building.new # Creates a new instance of the class Building.  You must use this syntax to create it
puts # Puts an empty line
puts building.to_s # Use the normal ruby to_s method.  This returns "#<Building:0x007fec811509d0>" or something similar.  Not pretty!


class BuildingCustom < Building # Inherit from the class Building (use it's attr_accessor and its initialize method)
  def to_s # Define a custom to_s method.
    string = "" # Create an empty string variable - we are going to create a custom string
    string += "\nThis is a custom building:\n" # \n is equal to a new line
    string += "  It's name is #{ self.name }\n" # Refer to this instances accessible attributes and use name
    string += "  It's style is #{ self.style }\n"
    string += "  It's address is #{ self.address }\n"
  end
end

building_custom = BuildingCustom.new # Create a new instance of the BuildingCustom class
puts building_custom.to_s # Use its custom to_s method to pretty print
\# Might show something like this:
  \# This is a custom building:
  \#   It's name is Wonderful
  \#   It's style is Art Deco
  \#   It's address is York Street
```

* Create a menu method - remember that we are doing this step by step so things won't work straight away

```ruby
puts "(q)uit, (lb)list buildings"
response = gets.strip
while response != 'q'
  case response
  when 'lb'
    list_buildings(buildings)
  when 'la'
    list_apartments(buildings)
  else
    puts "That menu item doesn't exist"
  end
  response = gets.strip
end
```

* Create a list_buildings method that accepts the buildings array

def list_buildings(buildings)
  buildings.each do |building|
    puts "#{buildings.index(building)}: #{building}"
  end
end

* Create a list_apartments method that accepts the buildings array

def list_buildings(buildings)
  buildings.each do |building|
    building.apartments.each do |apartment|
      puts "#{buildings.apartments.index(apartment)}:  #{apartment}"
    end
  end
end

* This won't work!!  We need to make an apartment class with a custom initialize method (make sure this accepts parameters!) and our custom to_s method.  Make sure you also add attr\_accessor

* Lots of other things to do, but from here the code should be able to understand.  [**Go here**](https://github.com/ga-students/WDI_SYD_7/tree/master/week-01/day-05/rentals)



#### Modules!

A module is a collection of methods, constants and classes.  They provide you with a namespace - meaning things won't get overwritten (i.e. naming conflicts won't occur).

They are also incredible for doing things like mixins - i.e. incorporating code in a number of different places.

[This is a pretty great place to start learning about modules...](http://ruby-doc.com/docs/ProgrammingRuby/html/tut_modules.html)

They are named the same as classes - with a starting capital letter (they must have this), and initialized with the following:

```ruby
module Mailer # This defines a Mailer module
  class Email # This defines a class within the Mailer module
    def send_email
    end
  end
end
```

They are only meant to hold behaviour and classes!  Whereas classes also hold state (i.e. variables etc.)

Accessing things within modules can be a little difficult, but it is based around the following principles...

```ruby
Mailer::Email.send\_email # This goes into the Mailer module, finds the Email class and uses the send\_email method (which is within the Email class)
```

They are very useful - but for the moment - treat them as ways to encapsulate things and avoid naming conflicts.

In most cases, you can access modules from anywhere which is very helpful.

[Definitely have a look here!](https://www.udemy.com/blog/ruby-modules/)

#### Creating a Command / Project

These are the steps..
* make a folder - mkdir blog
* move into it - cd blog
* make a bin and lib directory - mkdir bin lib
* make a new file in the bin directory - touch main (NO FILE EXTENSION)
  * Click Plain Text (in the bottom right hand corner of Sublime and change the syntax highlighting to ruby)
  * At the top of this file - #!/usr/bin/env ruby - this tells it that it is to be executed as a Ruby file
  * Require a file - require_relative "../lib/blog/app"
* Make a blog folder in the lib directory ( cd into lib, mkdir blog)
* Make an app.rb file

```ruby
module Blog
  class App
    def start
    end
  end
end
```

* Call the start method in your /lib/blog/app file.  
  * Blog::App.new.start    - Obviously this could be any file or name
* Before you run the file 
  * Run the following command : chmod +x bin/main
  * This changes the permissions on the main file and makes it executable
* From then, if you run bin/main it runs the project
* Then you continue the process of creating a normal project

#### Different Types of Variables

###### Instance Variables

Instance variables are prefixed with a single @ sign.  They are localised to a single instance of, normally, a class.

Don't use these anywhere else!!  In a class, a variable prefixed with an @ sign is available everywhere - but impossible to access from outside.

The difference between these and variables defined with attr\_accessors is that attr\_accessors are available outside the class!

```ruby
class Customer
  def initialize(id, name, addr)
    @cust_id=id
    @cust_name=name
    @cust_addr=addr
  end
  def display_details()
    puts "Customer id #{ @cust_id }"
    puts "Customer name #{ @cust_name }"
    puts "Customer address #{ @cust_addr }"
  end
end
```

###### Class Variables

Class variables are quite similar to the above, the main differences are:
* They must be defined before they are used in a method
* Referencing an uninitialized class variable throws an error
* They aren't confined to particular instance of a class!!!!

```ruby
class Customer
  @@counter = 1
  def breathe_in
    puts @@counter += 1
  end
end
```  

###### Local Variables

Considered bad practice (or, at least, a code smell).  Traditionally though, they begin with an underscore, and are all lower case letters.  Scope of a local variable is to the nearest "end" declaration.  Don't use them!  Normally only used for parameters.

[LOOK HERE FOR MORE INFORMATION ABOUT VARIABLES](http://www.tutorialspoint.com/ruby/ruby_variables.htm)

#### Common Errors!

nil:NilClass - all that is saying is that there is nothing in the thing you are trying to call a method on.  Try putting a binding.pry the line before and check to see what the value is - you should see where you have gone wrong

uninitialized constant - ....... - this is saying that you haven't created the class ....... .  If you want to define the class in the same file, make sure you have actually defined it - with the class Something....end structure.  Make sure you have ended it!!  If you want to define it in another file, same as above but make sure you have required or loaded the file at the top.  (i.e. require_relative 'thisfile')

undefined method `name=' for #<Building:0x007ff921154ce0> (NoMethodError) (or something similar).  This normally comes up on initialization of a class.  All it is saying that you don't have the appropriate attr_accessors.  

This has come up a few times, when testing for equality - make sure you use double equals!  (==).  


#### Random Comments

Attributes = Description (i.e. attr_accessors are just ways of describing something)
Methods = Abilities (i.e. def program...end is just something that can be done)
Classes = a way to bootstrap and stop repetition.  Combines attributes and methods so very easy to initialize complete things.

Always start writing code in a language that you really understand.  I pseudocode everything - all in english.  Then I start coding the higher up things first (i.e. buildings before apartments).  There will be lots of errors to begin with (considered error driven development), but you can fill the gaps very easily.  Ruby has good errors

When defining data structures - make sure you think about the relationships.  Is it a have\_many relationship?  Or a has\_one relationship - or is it a belong_to relationship?

Add and Commit as regularly as tolerable.  My process is always add ., commit something, pull and then push.  Hard to make mistakes that way


#### HOMEWORK

[Happitails!!](https://gist.github.com/FluffyJack/34049791bde42f7f0cea)

[And go and do these videos](https://rubymonk.com/learning/books/1-ruby-primer)

