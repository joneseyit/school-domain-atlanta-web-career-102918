require "pry"
class School
  attr_accessor :school_name
  attr_reader :roster


  def initialize(school_name)
    @school_name = school_name
    @roster = {}

  end

  # def roster=(roster)
  #   @roster = roster
  # end


  #add student to roster
  def add_student(name, grade_level)
    if roster[grade_level] == nil
      roster[grade_level] = []
      roster[grade_level] << name
    else
      roster[grade_level] << name
    end


  end

  def grade(grade_level)

    roster.each do|grade, student|
      if grade == grade_level
        return student
      end
    end
  end

  def sort
    sorted_grades = roster.keys.sort
    new_hash = {}

    sorted_grades.each do|grade|
      new_hash[grade] = roster[grade].sort
    end
    new_hash
  end

end
