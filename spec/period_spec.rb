require 'rspec'
require 'period'

describe 'Period' do
  describe 'initialize' do
    it 'initializes Period with a name and an empty array of students' do
      test_period = Period.new({'name' => 'One'})
      expect(test_period).to be_an_instance_of Period
      expect(test_period.name).to eq 'One'
      expect(test_period.students).to eq []
    end
  end
end
