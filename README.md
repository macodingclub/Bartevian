
<h2>Generate connected DB and Model from the command line</h2>
<h4>rails g model Book title:string description:text author: string price:integer</h4>
 <p>Book's Model is singular(book) and in the db is plural(books)</p>
<h2>Create database from migration file</h2>
<h4>rake db:migrate</h4>
<h2>Start server</h2>
<h4>rails s</h4>
<h2>Generate controller from the command line</h2>
<h4>rails g controller Books</h4>
<h2>Check routes for the app</h2>
<h4>rake routes</h4>
<h2>In routes.rb file , create a restful route</h2>
<h4>resources :books</h4>
<h2>In routes.rb file defining the root of the application</h2>
<h4>root ‘books#index’</h4>
<h2> Install the gems, every time needs to be run when we installing new gems</h2>
<h4>bundle install</h4>
<h2>Install simple_form gems with incorporated bootstrap</h2>
<h4>rails g simple_form:intall –bootstrap</h4>

<h2>Install gem devise for login, logout</h2>
<h4>
    gem 'devise', '~> 4.2'
    rails g devise:install
    rails g devise:views
    rails g devise User
</h4>

<h2>Update DB with the new USER tables</h2>
<h4>rake db:migrate</h4>

<h2>Create relashions between user_id and items</h2>
<h4>rails g migration add_user_id_to_items user_id:integer</h4>

<h2>Connect with the DB through the console. Item is the DB-table</h2>
<h4>rails c
    Item.connection
    Item – see all fields and types of fields
    Item.first | Item.last | Item.find(3) – find by id
</h4>

<h2>Create variables with results from the DB query</h2>
<h4>
rails c
Item.connection
@book = Item.last
@item.user_id = 1
@item.save
</h4>
<h2>In show.html.erb- Add the logic if the user is login</h2>
<h4>
<% if user_signed_in? %>
<% if @item.user_id == current_user.id %>
	<%= link_to “Edit”, edit_item_path(@item) %>
	<%= link_to “Delete”, item_path(@item), method: :delete, data: { confirm: “Are you sure” } %>
<% end %>
<% end %>
</h4>

<h2>Connect with the DB through the console and add Categories manually</h2>
<h4>
rails c
Category.connection
Category.create(name: “Art”)
</h4>

<h2>Write pure SQL to the DB</h2>
<h4>
rails db
.tables
</h4>




# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...