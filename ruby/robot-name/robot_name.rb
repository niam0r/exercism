class Robot
  def self.forget
    @@name_enumerator = [*'AA000'..'ZZ999'].shuffle.each
  end

  self.forget
  # Line 6 is called immediately as Ruby is evaluating the class
  # so it happens once when the class is defined.

  attr_reader :name

  def initialize
    reset
  end

  def reset
    @name = @@name_enumerator.next
  end
end
