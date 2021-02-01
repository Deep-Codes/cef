## Hello Rails:

create a new rails project

```bash
rails new todo_manager
```

```bash
cd todo_manager
```

To Start the Server

```bash
rails server
```

Starts at [ http://localhost:3000/](http://localhost:3000/)

1. Configuring Routes

`config/routes.rb`

```rb
Rails.application.routes.draw do
  get "todos", to: "todos#index"
end
```

1. In `routes.rb`, we mapped the route todos to todos#index

2. So when we visit `localhost:3000/todos`, Rails tried to execute `todos#index`.

3. `todos#index` refers to the index method inside the `TodosController` class. This mapping is a Rails convention - so if we were referring to say students#update, then it will refer to the update method in the StudentsController class, and so on.

We have to create the `TodosController` class. In Rails, all "controllers" go into the `app/controllers` folder. Let's create a `todos_controller.rb` in `app/controllers`, and type the following inside it:

```rb
class TodosController < ApplicationController
  def index
    render plain: "Hello, this is /todos!"
  end
end
```

#### Bundler and Gemfile

There is a file called `Gemfile` file in the project's root directory

The `Gemfile` is a place where we list all the gems that our project depends on. Remember that in the last level on ActiveRecord, we had manually installed the rails and pg gems using the gem install command? That was fine for a tiny project which only you work on. But as a project grows, the number of its dependencies also usually grow. It is impractical to remember all those gems and their exact versions, and also to manually install them all the time.

To solve this, the Ruby community relies on a gem called bundler. To use bundler, we first list down all the gems we need for the project in the `Gemfile`. Then, when we call `bundle install` it will install all those gems automatically for us.

Try it for yourself! Run `bundle install` on your project root directory to see it in action.

1. Replace SQLite with PostgreSQL

The `Gemfile` that was created by default by rails new lists the gem sqlite3. SQLite is also a database, like PostgreSQL, but unlike Postgres, it is a flat-file db which doesn't work well for SaaS applications. So we have to remove SQLite and replace it with Postgres. To do this, run the following commands in the shell:

```bash
bundle remove sqlite3
bundle add pg
bundle install
```

2. Configure the database connection

In the last level we manually connected to the database with the connect_db! method. But in Rails we can simply write down the details about our database connection in the file config/database.yml, and Rails will connect to the database automatically.

```yml
default: &default
  adapter: postgresql
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  timeout: 5000

development:
  <<: *default
  host: localhost
  user: postgres
  password: changeme
  database: saas_db

# Warning: The database defined as "test" will be erased and
# re-generated from your development database when you run "rake".
# Do not set this db to the same as development or production.
test:
  <<: *default
  database: test_saas_db

production:
  <<: *default
  database: prod_saas_db
```

Now let's restart the Rails server so the new database configuration is loaded. For this, return to the terminal, and if the Rails webserver is already running, then exit it. You can press CTRL+C to exit the server. Then start it again by typing rails server.

Congratulations! You've now setup your Rails server to work nicely with our PostgreSQL database.
