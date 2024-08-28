---
id: rails
aliases: []
tags: []
---

# Rails

Rails is a very cool framework for web-applications and IMO the best for
mvp-prototyping and beyond.

## Curriculum

 - [Full Stack Ruby on Rails | theodinproject](https://www.theodinproject.com/paths/full-stack-ruby-on-rails)

Learning from some youtube guys:

 - [Video](https://www.youtube.com/watch?v=8i5JFLfbWkE) Source: [Projekt](https://github.com/justalever/projekt)
 - [Video](https://www.youtube.com/watch?v=u2o_new-T0o&t=555s) Source:
   [simple-pm](https://github.com/StephenFiser/simple-pm/tree/episode-1)
 - Best practises [Semicolon&Sons - Best practises I](https://youtu.be/vw7PlBvLq9k)
   Passing ruby data to javaScript

## Articles

- Great note collection from [corsego](https://blog.corsego.com/)
  - devise, hotwire, turbo, darkmode, basics, views
- Some great articles about coding [johnnunemaker](https://www.johnnunemaker.com/)
  - rails, ruby, ...
- Great summary about encryption in rails7 [corsego](https://blog.corsego.com/encrypted-credentials)
- [ActiveRecord Mistakes that slow down your app](https://www.speedshop.co/2019/01/10/three-activerecord-mistakes.html#where-means-filtering-is-done-by-the-database)
- Modularisation (Monolith):
	 - [Deconstructing the Monolith](https://shopify.engineering/deconstructing-monolith-designing-software-maximizes-developer-productivity)
	 - [The Modular Monolith: Rails Architecture | by Dan Manges | Medium](https://medium.com/@dan_manges/the-modular-monolith-rails-architecture-fb1023826fc4)
	 - [Ruby on Rails - Bounded contexts via interface objects](https://blog.eq8.eu/article/rails-bounded-contexts.html)
	 - [Enforcing Modularity inside a Rails Monolith | by Thomas Pagram | The Airtasker Tribe | Medium](https://medium.com/airtribe/enforcing-modularity-inside-a-rails-monolith-f856adb54e1d)
	 - [Enforcing Modularity in Rails Apps with Packwerk](https://shopify.engineering/enforcing-modularity-rails-apps-packwerk)
### Pattern matching

```ruby
def extract(**data)
  case data
    in name: {first:}
      puts first
    in tags: [first_tag, *_]
      puts first_tag
  end
end

> extract(name: { first: "Brad", last: "Gessler" })
"Brad"
> extract(tags: ["person", "earthling"] })
"person"
```

```ruby
def matcher(**data)
  if first = data.fetch(:first)
    puts first
  elsif data.key?(:tags)
    tags = data.fetch(:tags)
    if tags.is_a? Array
      puts tags.first
    end
  end
end
```
Source: [fly.io](https://fly.io/ruby-dispatch/pattern-matching-on-ruby-objects/)
### Test coverage pre-commit hook

To get an positive exit code for pre-commit hook integration you have to add this to your spec config:
```ruby
# spec/spec_helper.rb
RSpec.configure do |config|
  if ENV["TEST_COVERAGE"]
    SimpleCov.start "rails" do
      spec_paths = ARGV.grep %r{(spec)/\w+}
      if spec_paths.any?
        file_paths = spec_paths.map { |spec_path| spec_path.gsub(%r{spec/|_spec}, "") }
        add_filter do |file|
          file_paths.none? do |file_path|
            if file.filename.include? "/app/"
              file.filename.match?(%r{/app/#{file_path}})
            else
              file.filename.include?(file_path)
            end
          end
        end
      end
      minimum_coverage 98.9
      minimum_coverage_by_file 81.4
    end
  else
    SimpleCov.start "rails"
  end
  [...]
```

Pre-commit hook:
```bash
files=$(git --no-pager diff --name-only --cached --diff-filter=AM)
erbfiles=$(echo "$files" | grep -e '\.html.erb$')


[[ -n "$specfiles" ]] && (TEST_COVERAGE=true bundle exec rspec "$specfiles" || exit 1)
```

### Rails ERD

For creating an erd diagram of your db schema, you could create a pdf with: [rails-erd](https://github.com/voormedia/rails-erd) with this command:

`bundle exec rails erd attributes=foreign_keys,primary_keys,timestamps,content notation=bachman`

### Race conditions

Avoid race conditions with `ActiveRecord::Base.transaction do` and `Model.lock.find(model_id)` or `my_model_object.lock!`

Source: [fastruby.io](https://www.fastruby.io/blog/rails/code-quality/An-introduction-to-race-condition.html)

### Migration from sidekiq to solid_queue
```bash
Step 1: Update Gemfile
# Remove Sidekiq
# gem 'sidekiq'

# Add Solid Queue
gem 'solid_ queue'

Step 2: Run bundle install
# $ bundle install

Step 3: Generate Solid Queue installation files
# $ rails generate solid_queue: install

Step 4: Run migrations
# $ rails db:migrate

Step 5: Update config/application.rb
# Rails.application.configure do 
#	config.active_job.queue_adapter = :solid_queue
# end

Step 6: Remove Sidekiq initializer
# Delete or comment out config/initializers/sidekiq.rb

Step 7: Update worker process command in Profile or deployment scripts
# Old: worker: bundle exec sidekiq
# New: worker: bundle exec rails solid_queue: start

Step 8: Remove Redis configuration related to Sidekiq
# Check config/redis.yml or any Redis initializers

Step 9: Update any Sidekiq-specific code in your jobs

Before:
# class MyJob
# include Sidekiq: :Worker
# def perform(args)
#  job logic
# end
# end

After:
# class MyJob < ApplicationJob
# queue_as: default def perform(args)
# job logic
# end

Step 10: Update any Sidekiq-specific API calls

# Before: Sidekiq:: Client.push( 'class' => MyJob,
# After: MyJob. perform_later (1, 2, 3)

Step 11: Set up Mission Control (optional)

# In Gemfile:
gem 'mission_control-jobs'

# In config/routes.rb:
Rails.application.routes.draw do
	mount MissionControl:: Jobs:: Engine, at: "/jobs" 
end

Step 12: Remove any Sidekiq web UI routes

# Delete or comment out in config/routes.rb:

# require 'sidekiq/web'
# mount Sidekiq:: Web => '/sidekiq'
```

## RSpec
### Bisect flaky tests
with `rspec --bisect <file>` you could find flaky test setting to re-run it.
### Testing an array with attributes

```ruby
expect(items[0].id).to eql(1)
expect(items[0].name).to eql('One')
expect(items[1].id).to eql(2)
expect(items[1].name).to eql('Two')

expect(items[0]).to have_attributes(id: 1, name: 'One')
expect(items[1]).to have_attributes(id: 2, name: 'Two')

expect(items).to match_array([
  have_attributes(id: 1, name: 'One'),
  have_attributes(id: 2, name: 'Two'),
])
```
Source: [benpickles](https://www.benpickles.com/articles/73-testing-an-array-of-objects-with-rspec-have_attributes)

### Custom matcher

```ruby
RSpec::Matchers.define :have_errors_on do |attribute|
  chain :with_message do |message|
    @message = message
  end

  match do |model|
    model.valid?

    @has_errors = model.errors.key?(attribute)

    if @message
      @has_errors && model.errors[attribute].include?(@message)
    else
      @has_errors
    end
  end

 failure_message_for_should do |model|
     if @message
       "Validation errors #{model.errors[attribute].inspect} should include #{@message.inspect}"
     else
       "#{model.class} should have errors on attribute #{attribute.inspect}"
     end
   end

   failure_message_for_should_not do |model|
     "#{model.class} should not have an error on attribute #{attribute.inspect}"
   end
 end


# usage
describe User do
  before { subject.email = "foobar" }

  it { should have_errors_on(:email).with_message("Email has an invalid format") }

end
```

## Data class

Similiar to the [value-alike objects](https://docs.ruby-lang.org/en/master/Data.html) in ruby(3.2), here an example for rails:

```ruby
class DataClass
  ATTRIBUTES = %i[first_name last_name city zipcode phone_number].freeze

  include ActiveModel::Model

  attr_accessor *ATTRIBUTES

  def ==(object)
    ATTRIBUTES.all? { |attribute| public_send(attribute) == object.public_send(attribute) }
  end
end

ConsumerClass.new(DataClass({first_name: "Bill", last_name: "...", ...}))
```
Links: [Polyfill - Data gem](https://github.com/saturnflyer/polyfill-data)

## RSpec factory trait & transient

```ruby
FactoryBot.define do
  factory :user, class: User do
    trait :with_book do
      transient do
        # 🦄1. default value when you use :with_book trait
        # 🦄2. Dont't assign just 'Agile'. see also: https://thoughtbot.com/blog/deprecating-static-attributes-in-factory_bot-4-11
        title { 'Agile' }
      end
      after(:build) do |user, evaluator|
        user.book = FactoryBot.create(:book, title: evaluator.title)
      end
    end
  end

  factory :book, class Book do
    sequence(:title) { |n| "book no.#{n}" } # 🦄 default value
  end

end

# usage
let!(:user) { create(:user, :with_book, title: 'Ruby') }
```
Source: [dev.to/n350071](https://dev.to/n350071/rspec-factorybot-transient-trait-with-argument-2djd)

## RailsWorld2023

Some notes on talks:

- Turbo morphing
	- new feature for keep scrolling position on whole dom body change
- no-build / bun
	- key goal to eliminate build time for frontend stuff, ship as code
- if assignment block
	```ruby
	def test
	  42
	end
	if a = test
		puts "Assign #{a}"
	else
	  puts "Nil is return"
	end
	```
- Class.method(:name).source_location
	- get code location of a method
- Model attribute strict_loading prohibit loading relations
- Migration add_column :virtual
```ruby
create_table :users do |t|
  t.numeric :height_cm
  t.virtual :height_in, type: :numeric, as: 'height_cm / 2.54', stored: true
end
```
- Model with_options relations
```ruby
class User
  with_options dependent: :destroy do |options|
    options.has_many :tasks, class_name: "UserTask"
    options.has_many :addresses
  end
end
```
- try(:method_name) || default_method
- Routing constraints
	- subdomain
	- authenticated
- Routes draw split into files
- rails generate generator ApiClient
- String truncate_words with omission
- DateTime before? past? future?
- Time.current.all_day .all_week …
- Abbreviation number_to_human() round_mode significant format units

## Professional Ruby on Rails Developer with Rails 5

Some notes while doing the [udamy course](https://www.udemy.com/course/pro-ruby-on-rails-rails5/) and some [ruby](./ruby.md) notes:

### Basics

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

  # permit has_many list
  def recipe_params
    params.require(:recipe).permit(:name, :description, ingredient_ids: [])
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

Application helpers:

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
    # also possible
    redirect_to :back
  end
end
```

Render partial for model:

```ruby
# View
<% if recipe.ingredients.any? %>
  <p>Ingredients: <%= render recipe.ingredients %></p>
<% end %>

# Now create a new partial _ingredient.html.erb under the app/views/ingredients folder for this to work

<span class="badge"><%= link_to ingredient.name, 
                      ingredient_path(ingredient) %>   </span>
````

### Model

Order models by column:

```ruby
# order by updated_at -> top of model
default_scope -> { order(updated_at: :desc) }
```

Get just the last 20 entries of a model

```ruby
def self.most_recent
  order(:created_at).last(20)
end
```

### Routes

Set root route:

```ruby
# router.rb
root "pages#home"
```

Specific route to controller#method:

```ruby
get '/about', to: 'pages#about'
```

Nested routes:

```ruby
resources :recipes do
  resources :comments, only: [:create]
end

# Form in view
<%= form\_for(\[@recipe, @comment\], :html => {class: "form-horizontal", 
                                                role: "form"}) do |f| %>
````

### Links

Create links in views:

```ruby
<%= link_to "Edit this todo", edit_todo_path(@todo) %>
<%= link_to "Back to todos listing", todos_path %>
<td><%= link_to 'delete', todo_path(todo), method: :delete, data: { confirm: "Are you sure?"} %></td>
<%= link_to "MyRecipes", root_path, class: "navbar-brand", id: "logo" %>
<%= link_to "Sign up or log in", "#" class: "btn btn-danger btn-lg" %>
```

### Tests

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

###  Styling

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

### Views
Render html for each data:

```ruby
<%= f.collection_check_boxes :ingredient_ids, 
                                    Ingredient.all, :id, :name do |cb| %>
<% cb.label(class: "checkbox-inline input_checkbox") {cb.check_box(class: "checkbox") + cb.text} %>
      <% end %>
````

### Database

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

Many to many association:

```ruby
# Model
has_many :recipe_ingredients
has_many :recipes, through: :recipe_ingredients
````
