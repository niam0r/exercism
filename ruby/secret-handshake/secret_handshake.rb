class SecretHandshake
  def initialize(decimal)
    @bin = decimal.is_a? Numeric ? decimal.to_s(2).to_i : 0
  # rescue ArgumentError
    # @bin = 0
  end

  def commands
    commands = []
    return commands if @bin.zero?

    bin = @bin_str.to_i
    if bin >= 10000
      reverse = true
      bin -= 10000
    elsif bin >= 1000
      commands.push("jump")
      bin -= 1000
    elsif bin >= 100
      commands.push("close your eyes")
      bin -= 100
    elsif bin >= 10
      commands.push("double blink")
      bin -= 10
    elsif bin >= 1
      commands.push("wink")
    end

    reverse ? commands.reverse : commands
  end
end
