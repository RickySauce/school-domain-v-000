require 'pry'
# code here!
class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = Hash.new
  end

  def add_student(student,grade)
    #does this grade already exit?
    if !@roster.any? do |existing_grades|
      existing_grades == grades
      @roster[grade] = Array.new && @roster[grade] << student
    else @roster.any? do |existing_grades|
      existing_grades == grades
      @roster[grade] << student
    #if it does, do nothing
    #if it doesn't make a new grade
    #add student to that grade
  end

end
