# write code so the program prints:
#   Hello Mr. Mandela
#   Welcome Mr. Turing

def salute(name, salutation)
  last_name = name.split(" ")[-1]
  "#{salutation.capitalize} Mr. #{last_name}"
end

puts salute("Nelson Rolihlahla Mandela", "hello")
puts salute("Sir Alan Turing", "welcome")
