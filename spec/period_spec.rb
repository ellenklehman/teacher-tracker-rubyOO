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

  describe 'save' do
    it 'saves the period into all_periods' do
      test_period = Period.new({'name' => 'One'})
      test_period.save
      expect(Period.all).to eq [test_period]
    end
  end

  describe 'add_student' do
    it 'adds a student object to a period' do
      test_period = Period.new({'name' => 'One'})
      test_student = Student.new({'name' => 'Johnny Appleseed'})
      test_period.add_student('name' => 'Johnny Appleseed')
      expect(test_period.students).to eq [test_student]
    end
  end

  # describe 'students' do
  #   it 'can hold an array of students' do
  #     test_period = Period.new({'name' => 'One'})
  #     test_student = Student.new({'name' => 'Johnny Appleseed'})
  #     expect(test_period.students).to eq [test_student]
  #   end
  # end
end
