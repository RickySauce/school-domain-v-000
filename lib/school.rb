require 'pry'
# code here!
class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = Hash.new
  end

  def add_student(student,grade)
    @roster[grade] = [] unless @roster.any? do |existing_grades|
      existing_grades == grade
    end
    @roster.each do |grades|
      grades.each do |classes|
        classes << student if grades == grade
      end
    end

  end

end
