class Array
  def accumulate
    result = []
    if block_given?
      each { |e| result << yield(e) }
    else
      each { |e| result << e  }
    end
    result
  end
end
