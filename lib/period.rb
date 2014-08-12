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
end
