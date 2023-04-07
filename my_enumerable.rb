module MyEnumerable
  def all?(&block)
    each { |item| return false unless yield(item) } if block_given?
    true
  end

  def any?(&block)
    each { |item| return true if yield(item) } if block_given?
    false
  end

  def filter(&block)
    result = []
    each { |item| result << item if yield(item) } if block_given?
    result
  end
end