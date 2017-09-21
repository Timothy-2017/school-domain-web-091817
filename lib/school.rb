require 'pry'

class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end


  def add_student(student, grade)


    if @roster.has_key?(grade)
       @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end

  def grade(key)
    @roster[key]
  end

  def sort
    @roster.each_value do |students_array|
      students_array.sort! 
    end
  end
end
