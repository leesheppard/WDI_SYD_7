Week 01, Day 02
===============
### 11 / 11 / 2014

WHAT WE COVERED
---------------

* Warm up Exercises - Leap Year stuff


DETAILS
-------


#### BASIC TERMINAL COMMANDS:

##### pwd
  * Prints the current working directory
    * i.e. returns the current path, where you are

##### cd
  * Change Directory
  * Example Usage:
    * To go backwards use **cd ..**
    * To move into a folder use **cd FOLDER_NAME**

##### touch
  * This creates a file
  * Example Usage:
    * **touch TEST.txt**

##### mkdir
  * This creates a folder
  * Example Usage:
    * **mkdir TESTFOLDER**

##### rmdir
  * This removes a folder
  * Example Usage:
    * **rmdir TESTFOLDER**
  * This only works on empty folders!

##### rm
  * This removes a file or folder
  * Example Usage:
    * **rm TEST.txt**
  * You can pass flags to this
    * **rm -r** - This will recursively delete files and folder - works on folders with stuff in it

##### cp
  * This copies a file
  * Example Usage:
    * **cp CURRENTFIlENAME.txt WHATYOUWANTITTOBECALLED.txt**

##### mv
  * This moves a file or folder
  * Example Usage:
    * **mv FOLDERNAME /PATHTOWHEREYOUWANTITTOGO**

##### ls
  * List all files in the current directory
  * You can pass flags to this
    * **ls -l** shows a bunch more details - date update, permissions, user group, file size etc.
    * **ls -la** shows same details above, but also shows hidden files

##### open .
  * Opens the current folder in finder

##### tree
  * This is a custom command
  * To install it:
    * **brew install tree**
  * Then you can run **tree .**
  * It will show you your file structure

#### HOW TO SUBMIT HOMEWORK:
[Ga Students - WDI 7 - Sydney](https://github.com/ga-students/WDI_SYD_7_Work#readme)

###### Basic Intro
  * Create a directory using - **mkdir ga_wdi**
  * Move into the directory using **cd ga_wdi**
  * mkdir projects
  * git clone https://github.com/**YOUR-USERNAME-HERE**/WDI\_SYD\_7.git
  * git clone https://github.com/**YOUR-USERNAME-HERE**/WDI\_SYD\_7.git
  * Make sure it is working by using - **git remote -v**
    * You should see your two forks
  * git remote add upstream https://github.com/ga-students/WDI_SYD_7_Work.git
  * git remove -v
    * It should show a few more things - a _fetch_ and _push_ option on that URL

###### Every morning you should do the following:
  * Move into the WDI\_SYD\_7\_Work - **cd WDI\_SYD\_7\_Work**
  * git add .
  * git commit -m "Completed HW"
  * git push origin development
  * git checkout master
  * git pull origin development
  * git push origin master
  * git pull upstream master


###### At the end of each day:
  * Add everything to your local git repository - **git add .**
  * Add a commit message - **git commit -m "YOUR MESSAGE HERE"**
  * Push all of your local files to your fork - **git push origin development**
  * Move into the master branch - **git checkout master**
  * Pull everything from the development origin - **git pull origin development**
  * Push to the master branch - **git push origin master**

###### How to make a pull request
  * Go to your repository of WDI\_SYD\_7\_Work
  * Click on "_Pull Request_"
  * Give it a title
    * Follow this format - **hw\_w01\_d01\_submission**
  * Write a comment!!
    * We won't look at homework without comments
    * Talk about what you liked, what you struggled with etc.
  * This process allows everyone with access rights to _ga-students_ to be able to see your local git stuff

###### To pull down the classwork
  * Move into the directory - i.e. **cd WDI\_SYD\_7** or **cd WDI\_SYD\_7\_Work**
  * Then run **git pull**


#### How to run Ruby code:
  * Type in **irb** - use this to test out things
  * You can then perform operations
  * You can print things out to the "console"
    * use **p "Ruby"**
  * You can also make a file with the extension .rb
    * In the same directory as the file, you can then use the ruby command
      * touch test.rb
      * ruby test.rb


#### Some Ruby Data Types

**Numbers**

  * Integers - whole numbers
    * e.g. 1, 17, 193439
  * Floats - numbers with things after the decimal place
    * e.g. 3.14159, -343.32838
  * Operations include:
    * Addition = +
    * Subtraction = -
    * Division = /
    * Multiplication = *
    * Find the remainder = % (e.g. 5 % 2 = 1)
    * To the power of = ** (e.g. 5**5 = 3125)
  * You can use shorthand operators to reassign and perform operations - called syntactic sugar
    * a += 5
    * a -= 3
    * a *= 3
    * a /= 3
    * a %= 2
    * a **= 3

**Strings**

  * **Text**, always wrapped in quotes
    * "Ruby Strings"

**Booleans**

  * **true** or **false** - used for logic

**Variables**

  * Ways to store any data 
    * x = 42
    * y = 10
    * x + y = 52
  * Conventions on how to name variables:
    * this\_is\_a\_long\_variable_name
    * Called snakecase
      * Seperate words with an underscore and everything is lowercase
      * Try not to have a number in the variable name
        * Definitely don't start a variable name with a number

**Lots more - arrays, objects, hashes, classes etc.**


#### Ruby Basics

[A Gist for the Ruby Basics](https://gist.github.com/FluffyJack/83b7920c39fffab9a5d7)

String interpolation is a way to mix variables and strings
  * name = "Jack"
  * greeting = "Hello #{name}, how is your day going?"
  * p greeting
    * returns "Hello Jack, how is your day going?"

There are things called methods that you can apply to any data types
  * e.g. "Ruby".upcase
  * Search **[ruby-doc.org](http://www.ruby-doc.org/core-2.1.4)** to find details, or use the application Dash (Make sure you check for your version - should be 2.1.4)
    * [String Methods](http://www.ruby-doc.org/core-2.1.4/String.html)
    * [Integer Methods](http://ruby-doc.org/core-2.1.4/Integer.html)
    * [Float Methods](http://www.ruby-doc.org/core-2.1.4/Float.html)
    * etc.

For comparison (isn't just for numbers! works on strings, variables etc.):
  * Test for equality - **==**
  * Test for inequality - **!=**
  * Greater than - **>**
  * Less than - **<**
  * Greater than or equal to - **>=**
  * Less than or equal to - **<=**
  * Shuttle Operator or Comparison operator - **<=>**
    * This will return either -1, 0, or 1.  Corresponds to less than, equal to, or greater than

You can receive things with a ruby file by using **gets**
  * This is often used with the string method (which removes the white space around it).  i.e. **gets.string**

Single quotes don't allow string interpolation!  Double quotes do!

Logical Operators
  * The AND Operator - **&&**
    * Requires both to be true
  * The OR Operator - **||**
    * Requires one to be true
  * The NOT Operator - **!**
    * Requires false


#### Basic Flow Control with Ruby

[Check out this link](http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Control_Structures)

The queries in all of these can be any data type, or results of expressions (using || or && for example)

**IF STATEMENTS**
  if (some query)
    dothisstuff
  elsif (some other query)
    dosomeotherstuff
  else
    dootherstuff
  end

  The queries can be numbers, strings, or comparisons

**UNLESS STATEMENTS**
  unless (something)
    dosomething
  end

**TERNARY CONDITIONAL**
  result = (a\_condition) ? (expression\_if\_true) : (expression\_if\_false)
  

#### Git Basics (more than we covered!)

[Some good Git Documentation](https://confluence.atlassian.com/display/STASH/Basic+Git+commands)

[An easy video introduction to Git](https://try.github.io/levels/1/challenges/1)

[A really great video Git Tutorial - a little more intense](https://www.atlassian.com/git/?utm_source=basic-git-commands&utm_medium=link&utm_campaign=git-microsite)

##### Git Configuration

* **git config --global user.name "YOUR NAME HERE"**
* **git config --global user.email "YOUR EMAIL HERE"**

##### Git Commands

* **git init** - Initializes a local git repository
* **git clone** - Creates a working copy of either a local directory or a remote server
* **git add** - Can add individual files to your local git repository, but often written as **git add .** which adds everything
* **git commit -m "YOUR MESSAGE HERE"** - Commits all of your added files, make sure you add a message!!!
* **git push** - Pushes your local git repository to github
  * **git push origin master** - Sends changes to the remote repository
* **git status** - Lists the files you have changed, and the files that need to be added or committed
* **git remote add origin URL** - Connects your local repository to a remote server
* **git remote -v** - Lists all currently configured repositories
* **git checkout -b BRANCHNAME** - Creates a new branch and changes to it
* **git checkout BRANCHNAME** - Changes to the branch
* **git branch** - Lists all branches
* **git branch -d BRANCHNAME** - deletes the BRANCHNAME repository
* **git push origin BRANCHNAME** - Pushes your branch to Github so others can see it
* **git push --all origin** - Pushes all of your branches
* **git push origin :BRANCHNAME** - Deletes a branch from your remote repository
* **git pull** - Gets the stuff on the remote repository and attempts to merge it
* **git merge BRANCHNAME** - Merges the current branch to the specified BRANCHNAME
* **git diff** - Shows the merge conflicts
* **git log** - lets you know your current commits
* **git reset GIT\_SHA\_IDENTIFIER** - Copy this from the git log, it will go back to that commit
  * By default, this will keep all files
    * If you add the flag --hard, it will remove all uncommitted files at that point

Please, do the tutorials above - [particularly this one!](https://www.atlassian.com/git/?utm_source=basic-git-commands&utm_medium=link&utm_campaign=git-microsite)

#### [VIEW HOMEWORK](https://github.com/ga-students/WDI_SYD_7/blob/master/w01/d01/summary.md)

#### EXTRA

* [The Challenge](https://gist.github.com/FluffyJack/3c0a6b11809d86414c1a)
* [Try Github Videos](https://try.github.io/levels/1/challenges/1)
* [Code School Github Video](https://www.codeschool.com/courses/git-real)
* [Atlassian Getting Started with Git](https://www.atlassian.com/git/tutorials/setting-up-a-repository)
* [GET ELOQUENT RUBY](http://www.amazon.com/Eloquent-Ruby-Addison-Wesley-Professional-Series/dp/0321584104)