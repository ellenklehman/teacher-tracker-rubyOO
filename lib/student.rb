class Student
  attr_reader :name, :assignments

  @@all_students = []

  def initialize(attributes)
    @name = attributes['name']
    @assignments = []
  end

  def ==(another_student)
    self.name == another_student.name
  end

  def save
    @@all_students << self
  end

  def self.all
    @@all_students
  end

  def assignments
    @assignments
  end

  def add_assignment(new_assignment)
    @assignments << new_assignment
  end
end
