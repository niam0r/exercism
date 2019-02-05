PLANTS = {
  clover: 'C',
  grass: 'G',
  radishes: 'R',
  violets: 'V'
}

STUDENTS = %w(Alice Bob Charlie David Eve Fred Ginny Harriet Ileana Joseph Kincaid Larry)

class Garden
  def initialize(str)
    @garden_rows = str.split("\n")
  end

  def method_missing(method_id)
    if STUDENTS.include?(method_id)

    end
  end
end
