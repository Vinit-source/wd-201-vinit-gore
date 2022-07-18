count = 100
course = "SaaS 201"
is_live = true
lessons = ["Basics", "Intermediate", "Advanced"]

length = 30
breadth = 40
area = length * breadth

age = 20
name = "Sachin"
puts "I am " + name + " and I am " + age.to_s + " old."

# answer = 42
# "answer to life is " + answer	# no implicit conversion of Integer into String (TypeError)

answer = 42
"answer to life is #{answer}"

7.0 / 2

str = "all is well"
str.length # Length of the string
# => 11

str.upcase # Convert all characters to capital case
# => "ALL IS WELL"

str.downcase # Convert all characters to small case
# => "all is well"

str.capitalize # Capitalizes the first letter of the string
# => "All is well"

puts 1 == 1
puts "this" == "that"
puts 1 < 2
puts 1 > 2
puts 42 >= 42

puts "Fiction or non-fiction?"
genre = gets.chomp.downcase

if genre == "fiction"
  puts "Try reading Cryptonomicon by Neal Stephenson"
elsif genre == "non-fiction"
  puts "You should read The Ascent of Man by Jacob Bronowski!"
else
  puts "Oh I don't know about that genre"
end
