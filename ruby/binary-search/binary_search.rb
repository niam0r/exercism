class BinarySearch
  attr_reader :list, :middle

  def initialize(arr)
    raise ArgumentError if arr.sort != arr
    @list = arr
    @middle = @list.length / 2
  end

  def search_for(n)
    result = @list.find_index(n)
    raise RuntimeError if result.nil?
    result
  end
end
