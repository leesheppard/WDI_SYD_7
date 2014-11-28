Week 03, Day 05
===============
### 28 / 11 / 2014

WHAT WE COVERED
---------------

- [Morning Exercise](https://rubymonk.com/learning/books/1-ruby-primer/problems/155-restaurant)
- Recap
- Beginning of MoMA
- More on Active Record
- Active Record Database Assosciations
- Common DB related Active Record Methods
- Validation
- Github SSH
- CSS
- Q & A - Review

DETAILS
-------

#### Common DB Related Active Record Methods

[Full list of class methods here.](http://apidock.com/rails/ActiveRecord/Base)

**Class Methods**
- Artist.new
- Artist.create
- Artist.first
- Artist.last
- Artist.all
- Artist.find
- Artist.where
- Artist.find_by
- Artist.order
- Artist.count
- Artist.all.limit(num)
- Artist.offset
- Artist.update(num, key: value)
- Artist.update_all(key: value)
- Artist.destroy(num)
- Artist.distinct

**Instance Methods**
- a.save
- a.update
- a.destroy
- a.key?

#### Database Associations

Basically, an association is a connection between two Active Record models.  By declaring an association, you instruct Rails to maintain a Primary Key and Foreign Key information between instances of the two associated models.  

There are six types of associations:
- belongs_to
- has_one
- has_many
- has_many :through
- has_one :through
- has_and_belongs_to_many

[Read this!](http://guides.rubyonrails.org/association_basics.html)

#### Validation

In a model, you can use the validates keyword, i.e.:

```ruby
class Artist < ActiveRecord::Base
	has_many :paintings
	validates, :first_name, presence: true
	validates, :last_name, presence: true
end
```

[For a full list of validation options. Click here.](http://guides.rubyonrails.org/active_record_validations.html)

Common ones include:
- acceptance: true (validates that a checkbox on the user interface was checked when submitted)
- confirmation: true (for confirmation of an email address or password)
- length: { minimum: 4 } 
- uniqueness: true (checks whether anything is exactly the same in the database)

Test validation in console!!

```ruby
a = Artist.new
a.valid? #=> false
a.save

a.errors.full_messages
```

Use strong parameters!!!

```ruby
def create
	@artist = Artist.create(
		params.require(:artist).permit( :first_name, :last_name )
	)
	redirect_to @artist
end

\# BUT WE PREFER THIS WE (KEEP IT DRY)
def create
	@artist = Artist.create(artist_params)
	redirect_to @artist
end

private
	def artist_params
		params.require(:artist).permit(
			:first_name,
			:last_name
		)
	end
```

Remember that any methods that come after the private keyword can only be called within the class (i.e. other methods in this class)!
















