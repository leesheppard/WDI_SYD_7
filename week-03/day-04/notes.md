Week 03, Day 04
===============
### 27 / 11 / 2014

WHAT WE COVERED
---------------

- Ruby Gems
- Creating a CRUD App
- Reading Code
- Podcasts
- Learning Languages
- Active Record Basics
- Active Record Validations
- Class Review

DETAILS
-------

#### Ruby Gems

[Look Here!](http://guides.rubygems.org/rubygems-basics/)

**What is a gem?**

Just a package of someones code.  It is all open source so free to use.  It is a little Ruby library or program in a self-contained format.

RubyGems is the package manager for these things.

**Common Gem Commands**

- gem install package_name
- gem uninstall package_name
- gem list --local

#### Podcasts

http://ruby5.envylabs.com/
http://rubyweekly.com/
https://codeship.com/
https://blog.codeship.com/
http://devchat.tv/ruby-rogues/
http://devchat.tv/ruby-rogues/181-rr-rubyinstaller-with-luis-lavena
http://devchat.tv/ruby-rogues/180-rr-barriers-to-new-developers-with-kinsey-ann-durham
http://5by5.tv/rubyonrails
http://5by5.tv/
http://railscasts.com/
https://gorails.com/
http://www.metacasts.tv/
http://www.pluralsight.com/
Ruby5 -> Ruby Rogues -> RailsCasts
Subscribe to Ruby Weekly


#### LET US MAKE CRUD!!

**Steps.**

- rails new project_name
- cd project_name
- subl .
- git add .
- git commit -m “WHATEVER”
- git push (Repeat this and the previous two lines every major step or the way or death)
- rails g controller ControllerName index    -> this has to be plural
- rails g model Modelname    -> this has to be singular
- config/routes - resources :controllername
- 	To specify the routes:
- 	resources :controlelrname, only: [:index]
- rails server  (runs the server - don’t type in here!  cmnd + d will open multiple tabs)
- rails g model Modelname name:string species:string breed:string arrival_time:diatomite departure_time:datetime gender:string age:integer      (such expressive, much clarity - creates the database and models etc.)
- rake db:migrate
- rails g migration AddSexToAnimals sex:string
- go into that migration and add the following line : remove_column gender:string
- rake db:migrate


P.S. git reset --hard (goes back to the previous commit - make sure you git add . first!  Git doesn’t know those files so you need to let it know about them)
P.P.S. plural for controllers, singular for models
P.P.P.S. git log to check your commit history
P.P.P.P.S. use rake db:rollback to go back one version of your database
P.P.P.P.P.S. use rails c (or rails console) to go test stuff.
P^6.S. If using Modelname.new - make sure that after you create it, you use Modelname.save.  My preference is to use Modelname.create - this means you don’t have to use save


**But wait, what are all of those files that Rails created...**

- **app** - this organises the components of your applications.  It houses all of the MVC parts (views, controllers and models)
- **app/controllers** - This is the place that Rails looks at to find controllers - handles the web requests
- **app/helpers** - This holds any helper classes that assist the MVC.  It helps to keep the model, view and controller code small and focussed.
- **app/models** - This holds all the back end logic - it models and wraps the data and sends it back to the controller.
- **app/view** - Holds the display templates
- **app/view/layouts** - Holds the template file - typically houses the header and the footer.
- **components** - This holds components (tiny self-contained applications that you don’t need to worry about) - this bundles models, views and controllers
- **config** - This houses the configuration code that your application needs.  Database configuration (database.yml), Rails environment structure (environment.rb), and routing (routes.rb).  This is also where you modify behaviour in test, development and deployment.
- **db** - The model knows how to access relational database tables (i.e. sql, postgresql).  You can manage the databases in here.
- **doc** - Ruby has something called RubyDoc that automatically generates documentation for your code.  You can assist RubyDoc with comments in here.
- **lib** - You can put libraries here (unless you put them in vendor)
- **log** - Your error logs go here.  server.log, development.log, test.log, production.log
- **public** - This has all your files that don’t change (static) such as your javascript, images, stylesheets and html.  
- **script** - This holds the tools that rails uses - probably don’t touch this
- **test** - The tests that you write and the tests that Rails writes go here.  There are subdirectories for mocks, unit (unit tests), fixtures and functional (functional tests).
- **tmp** - Rails uses this place to hold temporary files for intermediate processing
- **vendor** - Libraries that are provided from third-party vendors go here.
- **README** - You edit this - hopefully it has a lot of details - for more go to [here.]()
- **Rakefile** - Helps build, package and test the Rails code. 
#### Bundler

[The Bundler Website](http://bundler.io/)

Common commands include:
- bundle (show the gems that you are using - plus install)
- bundle install (install necessary gems)
- bundle update (updates gems)
- bundle list (shows the current gems)








