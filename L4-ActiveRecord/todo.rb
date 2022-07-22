require "active_record"

class Todo < ActiveRecord::Base
  def due_today?
    due_date == Date.today
  end

  def overdue?
    due_date - Date.today < 0 && !completed
  end

  def due_later?
    due_date > Date.today
  end

  def to_displayable_string
    display_status = completed ? "[X]" : "[ ]"
    display_date = due_today? ? nil : due_date
    "#{id} #{display_status} #{todo_text} #{display_date}"
  end

  def self.show_list
    # all.map { |todo| todo.to_displayable_string }
    puts "Overdue\n"
    all.map { |todo| puts todo.to_displayable_string if todo.overdue? }

    puts "\n\n"

    puts "Due Today\n"
    all.map { |todo| puts todo.to_displayable_string if todo.due_today? }
    puts "\n\n"

    puts "Due Later\n"
    all.map { |todo| puts todo.to_displayable_string if todo.due_later? }
    puts "\n\n"
  end

  def self.add_task(h)
    due_date = Date.today + h[:due_in_days]
    Todo.create!(todo_text: h[:todo_text], due_date: due_date, completed: false)
  end

  def self.mark_as_complete(todo_id)
    todo = find(todo_id)
    todo.completed = true
    todo.save
    todo
  end
end
