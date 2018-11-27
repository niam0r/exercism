class Array
  def keep(&block)
    arr = []
    each { |e| arr << e if yield(e) }
    arr
  end

  def discard(&block)
    arr = []
    each { |e| arr << e if !yield(e) }
    arr
  end
end

# exercism henrik's solution:
class Array
  def keep
    each_with_object([]) { |x, out| out << x if yield(x) }
  end

  def discard
    keep { |x| !yield(x) }
  end
end
