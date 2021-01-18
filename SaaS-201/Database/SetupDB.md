## Postgres => ActiveRecord

#### Creating a Database

open `psql`

Type This :

This will set the database password for the postgres user to changeme. It will also create a new blank database called saas_db which we will use to build our web application. The final \q will allow you to exit from psql and return to the shell.

```sql
alter user postgres password 'changeme';
create database saas_db;
\q
```

In `connect_db.rb`

```rb
require 'active_record'

def connect_db!
  ActiveRecord::Base.establish_connection(
    host: 'localhost',
    adapter: 'postgresql',
    database: 'saas_db',
    user: 'postgres',
    password: 'changeme'
  )
end
```

then new file `create_table.rb`

```rb
require './connect_db.rb'
connect_db!

ActiveRecord::Migration.create_table(:todos) do |t|
  t.column :todo_text, :text
  t.column :due_date, :date
  t.column :completed, :bool
end
```

The `create_table` method creates a table called todos in the currently connected database. This is called a "migration" - any command that modifies the structure of the database, like creating tables, or adding and removing columns from an existing table, are all called "migrations".
