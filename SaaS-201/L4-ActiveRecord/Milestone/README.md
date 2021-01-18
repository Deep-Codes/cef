## Build a Todo Management CLI app

Task to complete:

1. print todos from the database in a format
2. ask for details of a new todo, save it to the database, and print the new list of todos.
3. mark a todo `completed` to true

Files Created:

- `connect_db.rb` : extends to `ActiveRecord::Base` Class and uses it's method `establish_connection` to connect to our Postgres Database with configurations like `user` , `password` , `dbname`.

- `todo.rb`: this contains the main logic for 3 other files

We create a Todo class following the "ActiveRecord conventions"
and extend it to `ActiveRecord::Base` Class.

Methods Created:

1. `due_today?`
   This checks if todo was due today based on which the date is shown/not shown in the `show_list` method.

2. `to_displayable_string`
   would create a string based on the todo status of being completed and due_date

3. `self.to_displayable_list`
   would map and return a string by chaining `to_displayable_string` method.

4. `self.due_today`, `self.due_later`, `self.overdue`
   using `where` and passing a hash `due_date` we get a list of Todos satisfying that condition later we chain it with `to_displayable_list`

5. `self.show_list`
   this method is called in `list-todos.rb`, `add-todo.rb`, and `complete-todo.rb` and uses methods `due_today`, `due_later`, `overdue` to return a list and later print it.

6. `self.add_task()`
   this method is called in `add-todo.rb` and is used to add a Todo in the Database we get the `todo_text` and `due_date` in the hash we later use the `create!` method of `ActiveRecord::Base` which helps us to create and add a new todo to the database

7. `self.mark_as_complete!()`
   this method is called in `complete-todo.rb` it gets the `todo_id` and then finds the todo object.

   later we change the complete status of the todo to true and use the `save` method to save changes to the database.
