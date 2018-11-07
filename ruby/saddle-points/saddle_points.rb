class Matrix
  attr_reader :rows, :columns
  def initialize(str)
    @rows = str.each_line.map{ |row| row.split.map(&:to_i) }
    @columns = @rows.transpose
  end

  def saddle_points
    saddle_points = []

    @rows.each_with_index do |row, yi|
      row.each_with_index do |n, xi|
        if (n == row.max) && (n == @columns[xi].min)
          saddle_points.push([yi, xi])
        end
      end
    end
    saddle_points
  end
end
