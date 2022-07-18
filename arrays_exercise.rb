# Problem 1
names = [["Jhumpa", "Lahiri"], ["J. K", "Rowling"], ["Devdutt", "Pattanaik"]]
full_names = names.map { |s| s.join(" ") }

# Problem 2
books = ["Design as Art", "Anathem", "Shogun"]
authors = ["Bruno Munari", "Neal Stephenson", "James Clavell"]
books.zip(authors).map { |s| s.join(" was written by ") }

# Problem 3
todos = [
  ["Send invoice", "money"],
  ["Clean room", "organize"],
  ["Pay rent", "money"],
  ["Arrange books", "organize"],
  ["Pay taxes", "money"],
  ["Buy groceries", "food"],
]

cats = []

todos.each {
  |a|
  i = cats.find_index { |c| c[0] == a[1] }	# find_index is required to get the returned value as index
  # with index is not able to do that
  if i == nil
    cats.push([a[1], [a[0]]])
  else
    cats[i][1].push(a[0])
  end
}

cats.each {
  |c|
  puts "#{c[0]}:"
  c[1].each { |t| puts "    #{t}" }
}
