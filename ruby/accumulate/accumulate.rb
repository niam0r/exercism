class Array
  def accumulate
    result = []
    each { |e| result << yield(e) }
    result
  end
end
