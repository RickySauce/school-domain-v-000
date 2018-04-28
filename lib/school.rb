# code here!
class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = Hash.new
  end

  def add_student(grade,student)
    @roster[grade:] = Array.new if !@roster.any? do |existing_grades|
      existing_grades == grade
    end
    @roster[grade:] << student
  end

end
