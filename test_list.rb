require_relative 'my_list'

list = MyList.new(1, 2, 3, 4)

# Test #all?
p(list.all? { |e| e < 5 })
p(list.all? { |e| e > 5 })

# Test #any?
p(list.any? { |e| e == 2 })
p(list.any? { |e| e == 5 })

# Test #filter
p(list.filter(&:even?))
