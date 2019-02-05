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

  def plants_for(student)
    p "#{student}"
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
