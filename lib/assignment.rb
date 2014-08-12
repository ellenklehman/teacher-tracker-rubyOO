class Assignment
  attr_reader :name, :score

  def initialize(attributes)
    @name = attributes['name']
    @score = attributes['score']
  end

end
