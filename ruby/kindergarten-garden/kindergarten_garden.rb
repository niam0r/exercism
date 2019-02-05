PLANTS = {
  'C' => :clover,
  'G' => :grass,
  'R' => :radishes,
  'V' => :violets
}

STUDENTS = %w(Alice Bob Charlie David Eve Fred Ginny Harriet Ileana Joseph Kincaid Larry)

class Garden
  def initialize(str)
    @garden_rows = str.split("\n")
  end

  def plants_for(student)
    plants = []
    student_index = STUDENTS.index(student)
    @garden_rows.each do |row|
      plants << PLANTS[row[student_index]]
      plants << PLANTS[row[student_index + 1]]
    end
    plants
  end

  def method_missing(method_name, *args)
    possible_student = method_name.id2name.capitalize
    if STUDENTS.include?(possible_student)
      plants_for(possible_student)
    else
      super
    end
  end
end


garden = Garden.new("RC\nGG")
garden.alice


