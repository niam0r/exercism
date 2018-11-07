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
        if biggest_of_row?(row, n) && smallest_of_column?(@columns[xi], n)
          saddle_points.push([yi, xi])
        end
      end
    end
    saddle_points
  end

  private

  def biggest_of_row?(row, n)
    n == row.max
  end

  def smallest_of_column?(col, n)
    n == col.min
  end
end
