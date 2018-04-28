require 'pry'
# code here!
class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = Hash.new
  end

  def add_student(student,grade)
    @roster[grade] = Array.new unless @roster.any? do |existing_grades|
      existing_grades == grade
    end
    @roster
    @roster[grade] << student
  end

end
