class School
  def initialize
    @students = []
  end

  def students(grade)
    @students[grade] || []
  end

  def add(student, grade)
    @students[grade] = [] if @students[grade].nil?
    @students[grade].push(student)
  end
end
