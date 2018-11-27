class Change

  class NegativeTargetError < ArgumentError; end
  class ImpossibleCombinationError < StandardError; end

  def self.generate(coins, target)
    raise NegativeTargetError if target < 0
    return [] if target.zero?
    return [target] if coins.include?(target)
    raise ImpossibleCombinationError if coins.sum < target || target < coins.min
    # coins.reject {|coin| coin > target}
    # return coins if coins.sum == target

  end
end

# Change.generate([1, 5, 10, 25, 100], 15)

# copy = Marshal.load(Marshal.dump(coins))

# Change.generate([1, 5, 10, 21, 25], 63)

# Change.generate([1, 5, 10, 21, 25], 63)

# p Change.generate([5, 10], 94)
