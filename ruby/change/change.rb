class Change

  class NegativeTargetError < ArgumentError; end
  class ImpossibleCombinationError < StandardError; end

  def self.generate(coins, target)
    raise NegativeTargetError if target < 0
    return [] if target.zero?

    coins.reject {|coin| coin > target}
    return [target] if coins.include?(target)


  end
end



# copy = Marshal.load(Marshal.dump(coins))
