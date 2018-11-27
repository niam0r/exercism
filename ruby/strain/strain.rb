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
