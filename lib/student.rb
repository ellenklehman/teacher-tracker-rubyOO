class Student
  attr_reader :name, :assignments

  def initialize(attributes)
    @name = attributes['name']
    @assignments = []
  end

  def ==(another_student)
    self.name == another_student.name
  end
end
