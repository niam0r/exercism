class Matrix
  attr_reader :rows

  def initialize(str)
    @rows = process(str)
  end

  def process(str)
    matrix = []
    str.each_line do |row|
      matrix.push(row.split.map(&:to_i))
    end
    matrix
  end
end
