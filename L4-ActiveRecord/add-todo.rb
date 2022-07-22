require "./connect_db.rb"
require "./todo.rb"

def get_new_todo # Base class enables to write such a method
  puts "Todo text:"
  todo_text = gets.strip
  return nil if todo_text.empty?

  puts "How many days from now is it due? (give an integer value)"
  due_in_days = gets.strip.to_i

  {
    todo_text: todo_text,
    due_in_days: due_in_days,		# Such returning of hashes is invalid in ruby but perhaps
  # because of Base class this syntax is allowed. The actual key values for this hash \
  # are the : succeeding the key values present here.
  }
end

connect_db!
h = get_new_todo
if h
  new_todo = Todo.add_task(h)
  puts "New todo created with id #{new_todo.id}"
  Todo.show_list
end
