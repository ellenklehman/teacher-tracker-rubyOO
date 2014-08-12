class Period

  attr_reader :name, :students

  @@all_periods = []

  def initialize(attributes)
    @name = attributes['name']
    @students = []
  end
end
