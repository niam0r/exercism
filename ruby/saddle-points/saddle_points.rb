class Matrix
  attr_reader :rows
  def initialize(str)
    @rows = str.each_line.map{ |row| row.split.map(&:to_i) }
    @columns = @rows.transpose
  end

end
