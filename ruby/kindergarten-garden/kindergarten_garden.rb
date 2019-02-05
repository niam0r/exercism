PLANTS = { 'C' => :clover, 'G' => :grass, 'R' => :radishes, 'V' => :violets }

STUDENTS = %w(Alice Bob Charlie David Eve Fred Ginny Harriet Ileana Joseph Kincaid Larry)

class Garden
  attr_reader :rows
  def initialize(str)
    @rows = str.split("\n").map { |row| row.chars.map { |char| PLANTS[char] }}
  end

  def plants_for(student)
    plants = []
    position = STUDENTS.index(student) * 2
    @rows.each do |row|
      plants << row[position]
      plants << row[position + 1]
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

# garden = Garden.new("RC\nGG")
# garden.alice


