class BinarySearch
  attr_reader :list

  def initialize(arr)
    raise ArgumentError if arr.sort != arr
    @list = arr
  end

  def search_for(n)
    result = @list.find_index(n)
    raise RuntimeError if result.nil?
    result
  end

  def middle

  end
end
