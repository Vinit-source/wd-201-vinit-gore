# define hash
library = {
  "rowling" => "Harry Potter",
  "lahiri" => "Interpreter of Maladies",
}

puts library["lahiri"]

# Iterate over hash
library = {}
library["austen"] = ["Pride and Prejudice", "Sense and Sensibility"]
library["asimov"] = ["Robots of Dawn", "I, Robot"]

authors = library.keys
puts "These are the authors in my catalog: #{authors.join(", ")}"

library.each do |author, books|
  puts "#{author.capitalize} wrote the books #{books.join(", ")}"
end

"" "
To recap what we did in this code:

We can initialize an empty hash with {}
To add a new element to a hash, use the syntax: hash[key] = value
The values of a hash can be other objects - like arrays, or even other hashes
We can get an array of all the keys in a hash with the .keys method
When we iterate over a Hash with .each or .map, we get both the key and its value on each iteration.
" ""

a = :name
c = :"multiple words"  # Enclose multi-word symbols in double quotes

# symbols are just like any other data and
# we can put them inside arrays and hashes
c = [:x, :y]

# Symbols are most commonly used in Ruby as keys in Hashes:
library = {
  :austen => ["a", "b"],
}
library[:rowling] = ["x"]

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
