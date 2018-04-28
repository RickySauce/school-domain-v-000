require 'pry'
# code here!
class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = Hash.new
  end

  def add_student(student,grade)
    #creates a new grade if it doesn't already exist
    @roster[grade] = [] unless @roster.any? do |existing_grades|
      existing_grades == grade
    end
    #adds student to the grade array
    @roster.each do |grades|
      grades.each do |classes|
        if grades == grade
          classes << student
        end
      end
    end
  end

end
