class Matrix
  attr_reader :rows, :columns
  def initialize(matrix)
    @matrix = matrix
    @rows = []
    @columns = []
    splitter
  end

  def splitter
    @matrix.split("\n").each_with_index do |group, i|
      gp = group.split.map(&:to_i)
      i.even? ? @rows.push(gp) : @columns.push(gp)
    end
  end
end
