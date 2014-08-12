class Period

  attr_reader :name, :students

  @@all_periods = []

  def initialize(attributes)
    @name = attributes['name']
    @students = []
  end

  def save
    @@all_periods << self
  end

  def self.all
    @@all_periods
  end

  def students
    @students
  end

  def add_student(new_student)
    @students << new_student
  end

  def ==(another_period)
    self.name == another_period.name
  end
end
