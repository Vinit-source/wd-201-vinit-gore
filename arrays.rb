# Let's define an array of books
books = ["Siddhartha", "Shogun", "Discworld"]

# How many books are there?
books.length

# What is the first book?
books[1]

# Uh, oh, that's the second book. Array indexes start at 0!
books[0]

# Now let's get the last book from the array.
# This will work in any array of any length.
books[books.length - 1]

# Let's add a new book to the end of the array
books.push("Harry Potter")

# Now what could be the last element in the array?
# We actually don't have to do `books.length - 1`.
# There is a Ruby method that does exactly that!
books.last

# Enumerator (Similar to Iterator); run in irb
nums = [2, 4, 200, 400]
nums.each { |x| puts "The current number is #{x}" }

# Enumerator + map; run in irb
nums = [2, 4, 200, 400]
new_nums = nums.map { |number| number * 125 }
new_nums.each { |n| puts n }

# Split and join
s = "Hello, World!"
arr = s.split(", ")
puts arr.join(", ")

# Filter an array
[1, 2, 3, 4, 5].select { |num| num.even? }     #=> [2, 4]
a = %w[ a b c d e f ]
a.select { |v| v =~ /[aeiou]/ }    #=> ["a", "e"]

# Search an array using detect or find
(1..100).detect
(1..100).detect { |x| puts x }	# Enumerator
(1..100).find    => #<Enumerator: 1..100:find>

(1..10).detect   { |i| i % 5 == 0 and i % 7 == 0 }   #=> nil
(1..10).find     { |i| i % 5 == 0 and i % 7 == 0 }   #=> nil
(1..100).detect  { |i| i % 5 == 0 and i % 7 == 0 }   #=> 35
(1..100).find    { |i| i % 5 == 0 and i % 7 == 0 }   #=> 35
