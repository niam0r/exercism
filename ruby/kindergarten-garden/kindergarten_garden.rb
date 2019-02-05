PLANTS = { 'C' => :clover, 'G' => :grass, 'R' => :radishes, 'V' => :violets }.freeze

STUDENTS = %w[Alice Bob Charlie David Eve Fred Ginny Harriet Ileana Joseph Kincaid Larry].freeze

class Garden
  def initialize(diagram, students = nil)
    @rows = diagram.split("\n").map { |row| row.chars.map { |char| PLANTS[char] } }
    @students = students ? students.sort : STUDENTS
  end

  def plants_for(student)
    plants = []
    position = @students.index(student) * 2
    @rows.each do |row|
      plants << row[position]
      plants << row[position + 1]
    end
    plants
  end

  def method_missing(method_name, *args, &block)
    possible_student = method_name.id2name.capitalize
    if @students.include?(possible_student)
      plants_for(possible_student)
    else
      super
    end
  end

  def respond_to_missing?(method_name, *args)
    @students.include?(method_name.id2name.capitalize) || super
  end
end
