class Change

  class NegativeTargetError < ArgumentError; end
  class ImpossibleCombinationError < StandardError; end

  def self.generate(coins, target)
    raise NegativeTargetError if target < 0
    return [] if target.zero?
    return [target] if coins.include?(target)
    raise ImpossibleCombinationError if coins.sum < target || target < coins.min
    coins.reject {|coin| coin > target}
    return coins if coins.sum == target
  end
end

