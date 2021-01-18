class Todo < ActiveRecord::Base
  def due_today?
    due_date == Date.today
  end

  def to_displayable_string
    display_status = completed ? "[X]" : "[ ]"
    display_date = due_today? ? nil : due_date
    "#{id} #{display_status} #{todo_text} #{display_date}"
  end

  def self.to_displayable_list
    all.map { |todo| todo.to_displayable_string }
  end

  def self.due_today
    all.where("due_date = ? ", Date.today).to_displayable_list
  end

  def self.due_later
    all.where("due_date > ? ", Date.today).to_displayable_list
  end

  def self.overdue
    all.where("due_date < ? ", Date.today).to_displayable_list
  end

  def self.show_list
    puts "My Todo-list\n\n"

    puts "Overdue\n"
    puts overdue
    puts "\n\n"

    puts "Due Today\n"
    puts due_today
    puts "\n\n"

    puts "Due Later\n"
    puts due_later
    puts "\n\n"
  end

  def self.add_task(todo)
    text = todo[:todo_text]
    date = Date.today + todo[:due_in_days]
    all.create!(todo_text: text, due_date: date, completed: false)
  end

  def self.mark_as_complete!(id)
    todo = Todo.find(id)
    todo[:completed] = true
    todo.save
    todo
  end
end
