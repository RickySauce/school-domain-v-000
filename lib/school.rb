require 'pry'
# code here!
class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = Hash.new
  end

  def add_student(student,grade)
    if !@roster.any? do |existing_grades|
      existing_grades == grade
      @roster[grade] = Array.new && @roster[grade] << student
    else
      @roster[grade] << student
    end
  end

end
