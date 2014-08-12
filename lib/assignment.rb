class Assignment
  attr_reader :name, :score

  def initialize(attributes)
    @name = attributes['name']
    @score = attributes['score']
  end

  def ==(another_assignment)
    self.name == another_assignment.name
  end

end
