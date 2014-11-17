Week 02, Day 01
===============
### 17 / 11 / 2014

WHAT WE COVERED
---------------

* [Morning Exercise](https://gist.github.com/FluffyJack/161e1717fff648b73b56)
* What is the internet...
* HTTP
  * HTTPS
* FTP
  * SFTP
* IP Addresses
  * IPv4
  * IPv6
  * Fixed or Static
* HTML
* CSS
* Types of Requests
* Sinatra
* [Lab - Roman Numerals to Sinatra](https://gist.github.com/FluffyJack/6eb2b1219b6c36548752)
* [Homework - Calculator with ERB and Sinatra](https://gist.github.com/FluffyJack/4165b7b88e6902275f5e)


DETAILS
-------

#### What is the internet...

Not going to go into detail here.
* Basically it is billions of connected devices through a series of networks
* The Internet and the web aren't the same thing:
  * The web is the physical network of devices
  * The internet is the virtual network of information
* Where did it come from?
  * J.C.R Licklider came up with the "Galactic Network" in August, 1962
  * Then ARPANet was developed by the US Gov't (Advanced Research Projects Agency)
  * Vint Cerf and Bob Kahn developed TCP and IP in 1974
  * Tim Berners-Lee created the "World Wide Web" in the Early 1990's
  * Obviously, thousands of more steps but I feel like they are the main ones.

#### HTTP and HTTPS

###### HTTP

HyperText Transfer Protocol - basically it defines how messages are formatted and transmitted and what actions should be taken by web services (such as browsers).

It is a stateless protocol - meaning that each command is executed completely independently, without any knowledge of the commands that came before it. 

###### HTTPS 

This isn't a seperate protocol, it is just normal HTTP done over an encrypted SSL/TLS Connection

#### Types of Requests

In a REST (Representational State Transfer) environment, there are the following types of requests:

**GET**     - Retrieves whatever information is requested by the Request-URI
**HEAD**    - Same as get, but it MUST NOT return a message-body.  Just details about the request
**POST**    - Send stuff to the server (i.e. posting a message etc.) - typically for creating
**PUT**     - Traditionally used to update a particular thing
**DELETE**  - To delete 
**PATCH**   - Same thing as a PUT - except traditionally this is only to update a single field or small part of a database.

URI - Universal Resource Identifier
URL - Universal Resource Locator
Headers - Extra Information (metadata)
Response Body - Content
Request Body - Parameters / Details / Form Fields
Request - What is being sent to the server
Response - What is being sent back from the server
Method - What we want to do (i.e. get, post, put, patch etc.)
Port - Address to a program on a computer
IP Address - Address to a computer
DNS - Way to translate URLS to ip addresses
Status Codes - Defines the successful or non-successful state of a response

[More details here.](http://www.w3.org/Protocols/rfc2616/rfc2616-sec9.html)

#### Status Codes

1xx - Informational
2xx - Successful
3xx - Redirection
4xx - Client Error
5xx - Server Error

Common ones include:

200 - This is completely ok
201 - Created
301 - Permanent Redirect
302 - Temporary Redirect
400 - Bad Request
401 - Unauthorized
404 - Not found
500 - Server Unavailable

But, if you want to get super nerdy - [go here](http://en.wikipedia.org/wiki/List_of_HTTP_status_codes)

In terms of CRUD (i.e. **C**reate **R**ead **U**pdate **D**elete)
* POST = Create
* GET = Read
* PUT / Patch = Update
* DELETE = Delete

#### FTP, FTPS and SFTP

The [**File Transfer Protocol**](http://en.wikipedia.org/wiki/File_Transfer_Protocol) has been around for over 40 years - proposed in [RFC114](http://tools.ietf.org/html/rfc114) but is soon evolved into [RFC959](http://tools.ietf.org/html/rfc959) (which is what we use today).  It is a way to transmit computer files from one host to another host over a TCP based network.  It is unencrypted.

[**File Transfer Protocol Secure Sprockets Layer (FTPS)**](http://en.wikipedia.org/wiki/FTPS) was an add on to the FTP.  Originally when the FTP was created, security was not an issue.  FTPS is done in two ways:
* Explicit Mode - this requests a secure connection
* Implicit Mode - this must have a secure connection

The [**SSH File Transfer Protocol**](https://www.google.com.au/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&ved=0CCYQFjAA&url=http%3A%2F%2Fen.wikipedia.org%2Fwiki%2FSSH_File_Transfer_Protocol&ei=6bNpVPm9I-jBmAWukYLgDw&usg=AFQjCNE1OTJVwv1S184HVu2hi5HVrgmrww&bvm=bv.79142246,d.dGY) is quite similar to FTPS, except the data and commands are sent on the same channels.  This is also heavily based on SSL.

#### [IP Addresses](http://en.wikipedia.org/wiki/IP_address)

An **Internet Protocol Address** is a label given to every device that uses a computer network for communication.
Originally they were 32 bit numbers: 172.16.254.1 for example - this was IPv4
IPv6 uses 128 bit address - such as 2001:db8:0:1234:0:567:8:1

[Go read this link if you want to learn about this, but it isn't super vital for the moment.](http://en.wikipedia.org/wiki/IP_address)

Static IP's always remain the same, Dynamic IP's can change.

#### What are Ruby Gems?

RubyGems is a package manager for the Ruby programming language that provides a standard format for distributing Ruby programs and libraries (in a self-contained format called a "gem"), a tool designed to easily manage the installation of gems, and a server for distributing them. (LAZY COPY)

Normally, just type gem install **GEMNAME** 

But, if you don't want the documentation:  gem install **GEMNAME** --no-ri --no-rdoc

#### Introduction to Sinatra!

###### Getting Started

Basically, Sinatra is a DSL (Domain Specific Language).  It is primarily used for creating smaller web-based applications.

To get it going, you need to do a couple of things:
* Firstly, install the Sinatra gem (**gem install sinatra**)
* It is suggested that you install Thin - which is a better server (**gem install thin**)
* Then you are ready to go! At the top of a Ruby file (i.e. .rb), make sure you "  **require 'sinatra'**  "
* To run it, just run it like a normal ruby file (i.e. **ruby main.rb**)
* To view the result, go to (typically) **localhost:4567**

###### Routes

A route is an HTTP method paired with a URL matching pattern.

```ruby
get '/' do 
end

get '/posts/:id' do
end

post '/posts' do
end
```

Remember that routes are matched in the order that they are defined.

Route patterns may include parameters, these are accessible via the params hash.

```ruby
get '/hello/:name/:age' do
  "Hello #{ params[:name] }, you are #{ params[:age].to_i } years old.  Correct?"
end
```

###### Views / Templates

Each template needs to be rendered - i.e. it needs its own rendering method explicitly written.
Make sure you have a "views" folder - it has to be views!!  And, also make sure that your file extension is .rb

```ruby
get '/' do
  erb :index # This is looking for views/index.erb
end
```

Templates can also take a second parameter - which is the object hash. 

```ruby
get '/' do
  erb :index, :layout => :wolf
end
```

Using the views/wolf.erb as a template, this will replace the **<%= yield %>** with whatever content is defined in the views/index.erb.  
Make sure you have a yield in your template files!

###### Accessing Variables in Templates

Because templates are evaluated in exactly the same position as your routes file, all instance variables defined (i.e. prefixed with an @) in the routes are directly accessible to your template files.

#### ERB Basics

There are a bunch of different options for interpolation with Ruby:

```ruby
<%= # RUBY WILL EVALUATE AND OUTPUT THIS =>
<% # RUBY WILL EVALUATE, USE  >
<%- # RUBY WILL EVALUATE THIS AND TAKE OFF ANY NEW LINES AT THE END (I THINK) -%>
<%=  -%>
<%#  %>
<%  -%>
```

###### ERB Autocomplete

No way for it to happen naturally...  But if you want it to work:
* Open Package Control (cmnd + shift + p, then type install, then hit enter)
* Type SublimeERB, and hit enter
* Open Key Bindings - User (Click Sublime Text, hover over preferences, and hit Key Bindings - User)
* In between the square brackets, copy and paste this line:
  **{ "keys": ["ctrl+shift+."], "command": "erb" }**
* Restart Sublime and from then on - **ctrl + shift + .** will create ERB delimiters - and then alternate

#### HOMEWORK

* [Basic Calculator Implementation with Sinatra and ERB](https://gist.github.com/FluffyJack/4165b7b88e6902275f5e)
* Implement the Advanced Calculator if you wish
* Then these tutorials:
  * [Sinatra 1 on Sitepoint](http://www.sitepoint.com/just-do-it-learn-sinatra-i/)
  * [Sinatra 2 on Sitepoint](http://www.sitepoint.com/just-do-it-learn-sinatra-ii-2/)
  * [Sinatra 3 on Sitepoint](http://www.sitepoint.com/just-do-it-learn-sinatra-iii/)
  * [Sinatra 4 on Sitepoint](http://www.sitepoint.com/just-do-it-learn-sinatra-iv/)
