# multi-line syntax
numbers = [1, 2, 3].map do |i|
  x = i + 2
  x = x * 2
  x
end
puts numbers

# single line syntax
numbers = [1, 2, 3].map { |i| (i + 2) * 2 }
puts numbers

# Reference for below codes: https://dev.to/baweaver/understanding-ruby-blocks-procs-and-lambdas-24o0
def map(list, &function)
  new_list = []
  list.each { |v| new_list << function.call(v) }
  new_list
end

map([1, 2, 3]) { |v| v * 2 }
# => [2, 4, 6]

def map_implied(list)
  new_list = []
  list.each { |v| new_list << yield(v) }
  new_list
end

map_implied([1, 2, 3]) { |v| v * 2 }
# => [2, 4, 6]

map([1, 2, 3]) { |v| v * 2 }
# => [2, 4, 6]

add_one = ->a { a + 1 }
map([1, 2, 3], add_one)
# ArgumentError (wrong number of arguments (given 2, expected 1))

add_one = ->a { a + 1 }
map([1, 2, 3], &add_one)
# => [2, 3, 4]

map([1, 2, 3])
# NoMethodError (undefined method `call' for nil:NilClass)

map_implied([1, 2, 3])
# LocalJumpError (no block given (yield))

# Proc Function
adds_two = Proc.new { |x| x + 2 }
adds_two.call(3)
# => 5

adds_three = proc { |y| y + 3 }
adds_three.call(2)
# => 5
