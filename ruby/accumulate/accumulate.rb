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

# exercism remcopeereboom's solution:
# class Array
#   def accumulate(&block)
#     return enum_for(:accumulate) unless block_given?
#     a = []

#     for i in 0...length
#       a[i] = yield self[i]
#     end

#     a
#   end
# end
