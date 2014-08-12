
class Assignment
  attr_reader :name, :score

  @@all_assignments = []

  def initialize(attributes)
    @name = attributes['name']
    @score = attributes['score']
  end

  def ==(another_assignment)
    self.name == another_assignment.name
  end

  def save
    @@all_assignments << self
  end

  def self.all
    @@all_assignments
  end

  def add_score(total_score, student_score)
    percentage = (student_score/ total_score) * 100
    @score = percentage
  end

end
