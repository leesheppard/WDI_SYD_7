Week 01, Day 04
===============
### 13 / 11 / 2014

WHAT WE COVERED
---------------

* [Warm up Exercises - CSV File](https://gist.github.com/FluffyJack/b134abde0de13dba2a97)
* Classes
* Scopes
* Inheritance and subclasses
* Self
* Super method
* Default Params
* Debugging
  * puts method
  * binding.pry method
* Multifile Projects
* Homework
  * Rental app

DETAILS
-------


#### Classes

###### What are they?

It is the essence of DRY (**D**on't **R**epeat **Y**ourself) code - and a major part of OOP (**O**bject **O**riented **P**rogramming).

More or less, it is a blueprint for an object.  It bootstraps production of things that will occur a lot.
It is a combination of keys, values and methods.  But the methods are the things that allow them to be so useful.  It also encapsulates variables and methods etc which is very helpful.

What should you put in them?
* Methods that need to be called on everything that uses this class
* Your accessible attributes (i.e. attr_accessor :name, :yadda)


###### How do you create them?

You must define them with the class keyword (make sure you end it as well).  Make sure you initiate a new instance of it, and if you want to call any methods on it - you need to be explicit

```ruby
class Human # This defines the class
  def test_method
  end
end

me\_myself\_and\_i = Human.new # This creates an instance of the class
me\_myself\_and\_i.test\_method() # This calls the test\_method
```

###### Inheritance

Make sure you don't forget the funnel!  This creates a "subclass".

```ruby
class FrenchPerson < Human # This defines the FrenchPerson class and tells it to copy everything from the Human class
end

french_person = FrenchPerson.new
```

###### Creating a Constructor Function - creating an initialize function

In classes, the basic constructor function is "initialize".  This will be called on creation of a new instance.
Convention says that this goes at the top of the class.

```ruby
class Human # This defines the class
  def initialize(name, age, weight)
  end
end

roger = Human.new("Roger", 42, "182cm")
```

#### What is self?

The keyword "self" gives you access to the current object.  If you create an instance of a class, self is that class.  If you call a method on french\_human (an instance of a class) - self is equal to french\_human.

Very similar to Javascript's this.

#### The Super Method

Another weird one, and it works in a few ways:
* When you invoke super with no arguments, Ruby sends a message to its super class (i.e. where it inherits from) - asking it to invoke a method of the same name as the method that is invoking super.  It also automatically forwards the arguments (though they need to be accepted at both sides)
* If you call super() - it won't send any arguments
* If you call super(a, b, c) - it sends exactly those arguments

#### Defaults for Parameters

Wherever you accept parameters - if you have an equal sign and any data type - that will become the default value.  They will be overridden!!!

```ruby
class Human
  def create_human( name = "Jane", status = "Heavenly" )
  end
end
```

#### Debugging

"If debugging is the practice of removing bugs from software... then programming must be the practice of adding them. "
- Edsger W Dijkstr

There are lots of different methods of debugging, but for the moment they can be broken into the binding.pry method and the puts method.  Please do this regularly - if there are errors - find the line number (normally that is in the error - MAKE SURE YOU READ THE ERROR!!!)

I prefer the binding.pry method.

###### binding.pry method

* require 'pry' - this normally goes on the first line of the file
* place "binding.pry" in the file somewhere where it matters, typically right before an error

This allows you to inspect elements, run and create functions etc.  Basically it gives you a live console.

###### Puts method

Very similar to the binding.pry method
* Except, instead you are just "puts"ing the current values of variables
* This doesn't give you an interactive console like the binding.pry method.

#### Scope

This is an insanely hard thing - and at the end of the day it just takes time.  When using variables, **normally** if they are defined within a method or class, they aren't accessible anywhere else.  If it isn't within a method or class - it tends to be almost global.

In general:
* The top level (outside of all definition blocks) has its own local scope.
* Every class or module definition block (class, module) has its own local scope, even nested class/module definition blocks.
* Every method definition (def) has its own local scope.

[For more information...](http://www.techotopia.com/index.php/Ruby_Variable_Scope)

Before you understand it, there are a few things that you need to have a look at:

###### Types of Variables

There are a whole heap of variable types - and they don't a long time to get used to.  Convention states that a:
  Instance variable - start with an @ and are snake case
  Constants - all capitals snake_case
  Class variables - prefixed with a @@ (global within the class)

###### Detecting the Scope of variables

```ruby
x = 10
defined? x # Returns "local-variable"

@x = 10
defined? @x # Returns 'instance-variable'
```


#### Multifile Projects

The first couple of programs we wrote - it was fine to keep them in one file, but our code has started to grow.  It is now at the point that breaking our code into logical groupings is far better.  

A bunch of ways to do it:

Using the load method...

```ruby
load 'filename.rb'
```

Using the require method...

```ruby
require 'filename' # Notice there is no .rb!
```

Using the require_relative method...

```ruby
require 'filename' # Notice there is no .rb!
```







