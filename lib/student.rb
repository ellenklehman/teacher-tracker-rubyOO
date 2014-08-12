class Student
  attr_reader :name, :assignments

  def initialize(attributes)
    @name = attributes['name']
    @assignments = []
  end
end
