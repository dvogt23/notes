# Rails

Rails is a very cool framework for web-applications and IMO the best for
mvp-prototyping and beyond.

Learning from some youtube guys:

 - [Video](https://www.youtube.com/watch?v=8i5JFLfbWkE) Source: [Projekt](https://github.com/justalever/projekt)
 - [Video](https://www.youtube.com/watch?v=u2o_new-T0o&t=555s) Source:
   [simple-pm](https://github.com/StephenFiser/simple-pm/tree/episode-1)

## Ruby

Some `ruby` notes:

```ruby
truncate(recipe.description, length: 150)   # truncate
time_ago_in_words(recipe.created_at)        # date
pluralize(count, "apple")                   # pluralize if count > 1 to apples

```

## Professional Ruby on Rails Developer with Rails 5

Some note while making the [udamy course](https://www.udemy.com/course/pro-ruby-on-rails-rails5/):

## Basics

Render plain text:
```ruby
def hello
  render plain: "hello world!"
end
```

Create a controller with a method and use a object in view:

```ruby
# controller
class TodosController < ApplicationController

  def new
   @todo = Todo.new 
  end

end

# view
<%= form_for @todo do |f| %>

<% end %>
```

Use `flash` for notifications:

```ruby
#controller
@todo.save
flash[:notice] = "Todo was created successfully"

# view
<% flash.each do |name, msg| %>
  <ul>
    <li><%= msg %></li>
  </ul>
<% end %>
```

A bootstrap styled flash messages:

```ruby
<div class="row">
  <div class="col-md-10 col-md-offset-1">
    <% flash.each do |name, msg| %>
      <div class="alert alert-<%= name %>">
        <a href="#" class="close" data-dismiss="alert">×</a>
        <%= msg %>
      </div>
    <% end %>
  </div>
</div>
```

Render partials in view ie a file `views/layouts/_messages.html.erb`:

```ruby
<%= render 'layouts/messages' %>
```

Before run a method do action:

```ruby
# controller
before_action :set_todo, only: [:edit, :update, :show, :destroy]

private

  def set_todo
    @todo = Todo.find(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:name, :description)
  end

end
```

Add pg to production for ie. heroku deployment:

```ruby
group :production do
  gem 'pg'
end

bundle install --without production
```

Some simple validations:

```ruby
validates :name, presence: true
validates :description, presence: true, length: { minimum: 5, maximum: 500 }
```

Aplication helpers:

```ruby
helper_method :current_chef, :logged_in?

def current_chef
  @current_chef ||= Chef.find(session[:chef_id]) if session[:chef_id]
end

def logged_in?
  !!current_chef
end

def require_user
  if !logged_in?
    flash[:danger] = "You must be logged in to perform that action"
    redirect_to root_path
  end
end
```

## Model

Order models by column:

```ruby
# order by updated_at -> top of model
default_scope -> { order(updated_at: :desc) }
```

## Routes

Set root route:

```ruby
# router.rb
root "pages#home"
```

Specific route to controller#method:

```ruby
get '/about', to: 'pages#about'
```

## Links

Create links in views:

```ruby
<%= link_to "Edit this todo", edit_todo_path(@todo) %>
<%= link_to "Back to todos listing", todos_path %>
<td><%= link_to 'delete', todo_path(todo), method: :delete, data: { confirm: "Are you sure?"} %></td>
<%= link_to "MyRecipes", root_path, class: "navbar-brand", id: "logo" %>
<%= link_to "Sign up or log in", "#" class: "btn btn-danger btn-lg" %>
```

## Tests

Create integration test for model:

```ruby
rails generate integration_test recipes
```

Simple test root path:

```ruby
test "should get home" do
  get pages_home_url
  assert_response :success
end

test "should get root" do
  get root_url
  assert_response :success
end
```

to fix this tests, do:

```ruby
root "pages#home"
get 'pages/home', to: 'pages#home'

# controller
class PagesController < ApplicationController
  def home
  end
end
```

Test a simple validation:

```ruby
require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  
  def setup
    @recipe = Recipe.new(name: "vegetable", description: "great vegetable recipe")  
  end
  
  test "recipe should be valid" do
    assert @recipe.valid?
  end  
  
  test "name should be present" do
    @recipe.name = " "
    assert_not @recipe.valid?
  end
  
  test "description should be present" do
    @recipe.description = " "
    assert_not @recipe.valid?
  end
  
  test "description shouldn't be less than 5 characters" do
    @recipe.description = "a" * 3
    assert_not @recipe.valid?
  end
  
  test "description shouldn't be more than 500 characters" do
    @recipe.description = "a" * 501
    assert_not @recipe.valid?
  end
  
  test "should get recipes show" do
    get recipe_path(@recipe)
    assert_template 'recipes/show'
    assert_match @recipe.name, response.body
    assert_match @recipe.description, response.body
    assert_match @chef.chefname, response.body
  end
  
  test "should get recipes listing" do
    get recipes_path
    assert_template 'recipes/index'
    assert_select "a[href=?]", recipe_path(@recipe), text: @recipe.name
    assert_select "a[href=?]", recipe_path(@recipe2), text: @recipe2.name
  end
end
```

Test a email validation:

```ruby
require 'test_helper'

class ChefTest < ActiveSupport::TestCase
  
  def setup
    @chef = Chef.new(chefname: "mashrur", email: "mashrur@example.com")
  end
  
  test "should be valid" do
    assert @chef.valid?
  end
  
  test "name should be present" do
    @chef.chefname = " "
    assert_not @chef.valid?
  end
  
  test "name should be less than 30 characters" do
    @chef.chefname = "a" * 31
    assert_not @chef.valid?
  end
  
  test "email should be present" do
    @chef.email = " "
    assert_not @chef.valid?
  end
  
  test "email should not be too long" do
    @chef.email = "a" * 245 + "@example.com"
    assert_not @chef.valid?
  end
  
  test "email should accept correct format" do
    valid_emails = %w[user@example.com MASHRUR@gmail.com M.first@yahoo.ca john+smith@co.uk.org]
    valid_emails.each do |valids|
      @chef.email = valids
      assert @chef.valid?, "#{valids.inspect} should be valid"
    end
  end
  
  test "should reject invalid addresses" do
    invalid_emails = %w[mashrur@example mashrur@example,com mashrur.name@gmail. joe@bar+foo.com]
    invalid_emails.each do |invalids|
      @chef.email = invalids
      assert_not @chef.valid?, "#{invalids.inspect} should be invalid"
    end
  end 
  
  test "email should be unique and case insensitive" do
    duplicate_chef = @chef.dup
    duplicate_chef.email = @chef.email.upcase
    @chef.save
    assert_not duplicate_chef.valid?
  end
  
  test "reject an invalid signup" do
    get signup_path
    assert_no_difference "Chef.count" do
      post chefs_path, params: { chef: { chefname: " ", 
                                 email: " ", password: "password",
                                    password_confirmation: " " } }
    end
    assert_template 'chefs/new'
    assert_select 'h2.panel-title'
    assert_select 'div.panel-body'
  end
  
  test "accept valid signup" do
    get signup_path
    assert_difference "Chef.count", 1 do
      post chefs_path, params: { chef: { chefname: "mashrur", 
                email: "mashrur@example.com", password: "password",
                              password_confirmation: "password" } }
    end
    follow_redirect!
    assert_template 'chefs/show'
    assert_not flash.empty?
  end
  
end

# controller
class Chef < ApplicationRecord
  validates :chefname, presence: true, length: { maximum: 30 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  
end
```

Downcase before save with test:

```ruby
before_save { self.email = email.downcase }

# And then test it with:

test "email should be lower case before hitting db" do
  mixed_email = "JohN@ExampLe.com"
  @chef.email = mixed_email
  @chef.save
  assert_equal mixed_email.downcase, @chef.reload.email 
end
```

Create a association and test it:

Association
```ruby
# chef model
validates :chef_id, presence: true
has_many :recipes

# recipe model
belongs_to :chef

# destroy with dependent
has_many :recipes, dependent: :destroy
```

Test
```ruby
def setup
  @chef = Chef.create!(chefname: "mashrur", email: "mashrur@example.com")
  @recipe = @chef.recipes.build(name: "vegetable", description: "great vegetable recipe")  
end

test "recipe without chef should be invalid" do
  @recipe.chef_id = nil
  assert_not @recipe.valid?
end
```

##  Styling

Add `bootstrap` to project (good html/css tutorial [link](https://learn.shayhowe.com/html-css/)):

```ruby
gem 'bootstrap-sass', '~> 3.3.7'
gem 'jquery-rails'

# app/assets/javascripts/application.js
//= require bootstrap-sprockets

# app/assets/stylesheets/custom.css.scss
@import "bootstrap-sprockets";
@import "bootstrap";
```

## Database
  
Create migration:
  
```ruby
rails generate migration create_recipes

# modify the migration file
rails db:migrate
```

Rename column:

```ruby
rename_column :recipes, :email, :description
rails db:migrate
```

