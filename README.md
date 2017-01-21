<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
    <style>
    body {background-color: powderblue;}
    h2   {color: blue;}
    </style>
</head>
<body>
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
<h4>rails g simple_form:install –bootstrap</h4>

<h2>Install gem devise for login, logout</h2>
<h4>
    <p>gem 'devise', '~> 4.2'</p>
    <p>rails g devise:install</p>
    <p>rails g devise:views</p>
    <p>rails g devise User</p>
</h4>
<h2>Update DB with the new USER tables</h2>
<h4>rake db:migrate</h4>

<h2>Create relashions between user_id and items</h2>
<h4>rails g migration add_user_id_to_items user_id:integer</h4>

<h2>Connect with the DB through the console. Item is the DB-table</h2>
<h4>
    <p>rails c</p>
    <p>Item.connection</p>
    <p>Item – see all fields and types of fields</p>
    <p>Item.first | Item.last | Item.find(3) – find by id</p>
</h4>

<h2>Create variables with results from the DB query</h2>
<h4>
    <p>rails c</p>
    <p>Item.connection</p>
    <p>@book = Item.last</p>
    <p>@item.user_id = 1</p>
    <p>@item.save</p>
</h4>
<h2>In show.html.erb- Add the logic if the user is login</h2>
<h4>
    <p><% if user_signed_in? %></p>
    <p><% if @item.user_id == current_user.id %></p>
    <p>	<%= link_to “Edit”, edit_item_path(@item) %></p>
    <p>	<%= link_to “Delete”, item_path(@item), method: :delete, data: { confirm: “Are you sure” } %></p>
    <p> <% end %></p>
    <p><% end %></p>
</h4>

<h2>Connect with the DB through the console and add Categories manually</h2>
<h4>
    <p>rails c</p>
    <p>Category.connection</p>
    <p>Category.create(name: “Art”)</p>
</h4>

<h2>Write pure SQL to the DB</h2>
<h4>
    <p>rails db</p>
    <p>.tables</p>
</h4>
</body>
</html>





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