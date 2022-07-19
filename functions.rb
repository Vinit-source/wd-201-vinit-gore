recipients = [
  ["Srinath"],
  ["Jadeja", "Kambli"],
  ["Sachin", "Sidhu", "Kumble"],
]

# redundant code
emails = recipients[0]
if emails.length == 1
  puts "Hello #{emails[0]}!"
elsif emails.length == 2
  puts "Hello #{emails[0]} and #{emails[1]}!"
elsif emails.length > 2
  puts "Hello #{emails[0..-2].join(", ")}, and #{emails.last}!"
end

emails = recipients[1]
if emails.length == 1
  puts "Hello #{emails[0]}!"
elsif emails.length == 2
  puts "Hello #{emails[0]} and #{emails[1]}!"
elsif emails.length > 2
  puts "Hello #{emails[0..-2].join(", ")}, and #{emails.last}!"
end

emails = recipients[2]
if emails.length == 1
  puts "Hello #{emails[0]}!"
elsif emails.length == 2
  puts "Hello #{emails[0]} and #{emails[1]}!"
elsif emails.length > 2
  puts "Hello #{emails[0..-2].join(", ")}, and #{emails.last}!"
end

recipients = [
  ["Srinath"],
  ["Jadeja", "Kambli"],
  ["Sachin", "Sidhu", "Kumble"],
]

# using loop; what if code needs to be used at a different place in the codebase?
recipients.each do |emails|
  if emails.length == 1
    puts "Hello #{emails[0]}!"
  elsif emails.length == 2
    puts "Hello #{emails[0]} and #{emails[1]}!"
  elsif emails.length > 2
    puts "Hello #{emails[0..-2].join(", ")}, and #{emails.last}!"
  end
end

# defining and using function for referring code
def generate_salutation(emails)
  if emails.length == 1
    "Hello #{emails[0]}!"
  elsif emails.length == 2
    "Hello #{emails[0]} and #{emails[1]}!"
  elsif emails.length > 2
    "Hello #{emails[0..-2].join(", ")}, and #{emails.last}!"
  end
end

recipients = [
  ["Srinath"],
  ["Jadeja", "Kambli"],
  ["Sachin", "Sidhu", "Kumble"],
]

recipients.each do |emails|
  puts generate_salutation(emails)
end
