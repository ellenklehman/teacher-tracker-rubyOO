class Student
  attr_reader :name, :assignments

  def initialize(attributes)
    @name = attributes['name']
    @assignments = []
  end

  def ==(another_student)
    self.name == another_student.name
  end

  def assignments
    @assignments
  end

  def add_assignment(new_assignment)
    assignment = new_assignment
    @assignments << assignment
  end
end
