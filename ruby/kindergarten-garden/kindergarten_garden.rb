PLANTS = { 'C' => :clover, 'G' => :grass, 'R' => :radishes, 'V' => :violets }.freeze

DEFAULT_STUDENTS = %w[Alice Bob Charlie David Eve Fred Ginny Harriet Ileana Joseph Kincaid Larry].freeze

class Garden # :nodoc:
  def initialize(diagram, students = DEFAULT_STUDENTS)
    @rows = parse(diagram)
    @students = students.map(&:downcase).sort
  end

  def method_missing(method_name, *args, &block)
    if students.include?(method_name.to_s)
      plants_for(method_name.to_s)
    else
      super
    end
  end

  def respond_to_missing?(method_name, *args)
    students.include?(method_name.to_s) || super
  end

  private

  attr_reader :rows, :students

  def plants_for(student)
    plants = []
    position = @students.index(student) * 2
    rows.each do |row|
      plants << row[position]
      plants << row[position + 1]
    end
    plants
  end

  def parse(diagram)
    diagram.split("\n").map do |row|
      row.chars.map do |char|
        PLANTS[char]
      end
    end
  end
end
