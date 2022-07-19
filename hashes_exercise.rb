# Problem 1
books = ["Design as Art", "Anathem", "Shogun"]
authors = ["Bruno Munari", "Neal Stephenson", "James Clavell"]

library = {}
authors.each.with_index {
  |a, i|
  sym = a.split(" ")[0].downcase.to_sym
  library[sym] = books[i]
}

puts library

# Problem 2
todos = [
  ["Send invoice", "money"],
  ["Clean room", "organize"],
  ["Pay rent", "money"],
  ["Arrange books", "organize"],
  ["Pay taxes", "money"],
  ["Buy groceries", "food"],
]

cats = {}

todos.each {
  |a|
  k = cats.find { |k, v| k == a[1].to_sym }	# find_index is required to get the returned value as index
  # with index is not able to do that
  if k == nil
    cats[a[1].to_sym] = [a[0]]
  else
    cats[a[1].to_sym].push(a[0])
  end
}

puts cats
