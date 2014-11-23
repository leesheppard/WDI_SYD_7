Week 02, Day 05
===============
### 21 / 11 / 2014

WHAT WE COVERED
---------------

* [Morning Exercise](https://rubymonk.com/learning/books/1-ruby-primer/problems/5-string-length-finder)
* Files
* Survey
* Git and Github
* Review - Arrays, Hashes and Debugging
* Homework

DETAILS
-------

#### Files

This uses the [File class](http://www.ruby-doc.org/core-2.1.4/File.html).

You can only open one instance of a file at one time - it puts a lock on it so multiple

To load a file / create a connection between the file and ruby:

```ruby
the\_story = File.new("the\_story.txt")
puts the\_story.read # This will just show whatever is in the file
```

###### Modes

With Ruby, File's have "modes" - which changes your access rights.  To change modes:

```ruby
file = File.open ('myfile.txt', 'r') # This is Read Only (the default mode)
file = File.open ('myfile.txt', 'w') # This is Write Only
file = File.open ('myfile.txt', 'a') # This is Append Only
file = File.open ('myfile.txt', 'r+') # This is Read and Write - the pointer is where you are currently positioned
file = File.open ('myfile.txt', 'w+') # Same as above - but deletes everything in the file
file = File.open ('myfile.txt', 'a+') # This is Read and Write - but the pointer is positioned at the end of the file
```

[Look here to figure this out a bit more](http://ruby-doc.org/core-2.1.5/IO.html#method-c-new-label-IO+Open+Mode)

###### Common Methods

```ruby
database = File.new('database.txt', 'a+') # This creates a new file if it doesn't exist and gives read and write privileges to the file.  It creates a new session of this file as well
database.write("Wow!\n") # This writes a new line
database.write("This File class is great!\n")
database.write("How did I ever live without it?\n")
database.close # This closes the current database File session

database.read # Reads every character of the file
database.rewind - Takes the cursor / pointer to the very top of the file
File.readlines("file_name") # Reads every line in the document and breaks each line into elements of an array

File.open('database.txt', 'r') do |file|  
  while line = file.gets  
    puts line  
  end  
end  
\# the open method allows us to automatically close a session with the selected file.  It also allows us to do get crazy with want we want it to do.  Use this way over File.new

unless File.exists? 'ad.txt' # This will check to see if there is already a file with that time
  file = File.new('ad.txt', 'a+')
  file.close
end
```

###### Writing JSON to a file

Uses the [JSON (**J**avascript **O**bject **N**otation) module](http://www.ruby-doc.org/stdlib-2.0/libdoc/json/rdoc/JSON.html).  To do it - base it on the following (Make sure you require 'json' first):

```ruby
the\_teacher = { name: "Jack", awesome\_rating: "9000"}
the\_teacher\_json = JSON.generate(the\_teacher) # Returns -> "{\"name\":\"Jack\",\"awesome_rating\":\"9000\"}"

JSON(the\_teacher\_json) # Returns -> {"name"=>"Jack", "awesome_rating"=>"9000"}
\# Notice that it turns symbols (in the teacher) into strings.  To deal with this, you can use the to_sym method.
```

**But what is JSON?**

It is a way to store information in an organized, easy-to-access manner.  It provides readable, logical data storage. This is the reason we use it - it also can be interpreted by almost every language in the World so it makes it a very easy to distribute data (pretty much the only way.

**How to access it?**

Exactly the same way as Ruby Hashes!  They are almost the exact same thing.  Main difference is the : seperating keys and values in JSON is a => in a Ruby Hash.

**The Main Methods**

* **generate** - generates a JSON document from a Ruby Data structure
* **parse** - generates a Ruby Data structure from a JSON document

[Look here for more!](http://flori.github.io/json/doc/)

#### How are we all going?

As a class you guys are all moving really well.  We have covered a lot very quickly and we are happy with where every single one of you guys are at.  

There are a couple of things that I think are worth mentioning...

**Know what Data Structure**

Don't even try to write a line of code before you know exactly what you are working with.  Otherwise it will throw errors everywhere.  There are a bunch of different ways to find out which data structure it is:
* Use the .class method on a variable (will return String, Array etc.) - looks like this **name.class**
* Use binding.pry - make sure you require pry first.  This is my preferred method - I don't think a ruby project should ever be started without pry
* If using Erb, print the whole instance variable to the page.  This isn't a horrible solution but I would be going to pry first

**Use Pseudo-code**

You write in languages you completely understand first - I know it seems weird because it is what it is going through your brain anyway - but I promise it helps.  You have to break it up as much as possible.  The way I structure my pseudo code is:
* What data am I working with
* Then go through and break it up into tiny pieces.  (Don't try and write which methods or anything like that - pretend that you don't know how to code.)

**Keep code D.R.Y**

Don't repeat yourself - ever.  Whether that means abstracting repeated code into a method - or simply putting variable declarations before statements (such as if's etc.).  Constantly think about this.  I don't worry about code repetition when I was writing it.  Once it is working - I start to go through and start reducing my lines.



But really well done!