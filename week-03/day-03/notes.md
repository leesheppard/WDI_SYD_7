Week 03, Day 03
===============
### 26 / 11 / 2014

WHAT WE COVERED
---------------

- Covering up everything
- 	Revisting Classes, Methods etc.
- What is Sinatra and Rails - in a broad way
- Introduction to MVC’s (**M**odels **V**iews and **C**ontrollers)

DETAILS
-------

#### What is an MVC?

It is a way to structure our applications so that the responsibilities are clearly separated.

To do this: we separated every application into three main parts.  **Models, Views and Controllers**.

##### CONTROLLERS

The controller is the thing that manages the User Requests - similar to routes in Sinatra - things like GET, POST etc.  It’s main job is to call and coordinate the necessary resources and objects that are necessary to perform the user actions.  It calls the appropriate model - and then selects the proper view.

##### MODEL

The model is the data and all of the rules that apply to the data.  It represents the concepts that the application manages.  The sort of stuff that it manages?  Validating that dates can only be in the future, emails must be in a specific format, name cannot be over a certain amount of characters.

The model will often give the controller a piece of data (which the user requested).  It also contains the most important part of our application logic.

##### VIEWS

The Views provide different ways to present data that is received from the model (and sent to the model by the controller).  They can be templates.  And there can be as many different views as you want - just let the controller decide which one to use.  


At the end of the day - MVC provides separation and abstraction which, in turn, reduces the complexity of large applications.  The code is more structured, which makes it easier to maintain, test and reuse.

[Worth having a read of this!](https://developer.chrome.com/apps/app_frameworks)



#### ACRONYMS

**MVC** 		- Models, Views, Controllers
**CRUD** 	- Create, Read, Update, Delete
**REST** 	- Representational State Transfer
**DRY** 		- Don’t Repeat Yourself
**COC** 		- Convention over Configuration


[READ THE GETTING STARTED WITH RAILS GUIDE.](http://guides.rubyonrails.org/getting_started.html)

