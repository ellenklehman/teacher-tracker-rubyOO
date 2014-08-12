require 'rspec'
require 'assignment'

describe 'Assignment'  do
  describe 'initialize' do
    it 'initializes with a name and score' do
      test_assignment = Assignment.new({'name' => 'English essay', 'score' => 0})
      expect(test_assignment).to be_an_instance_of Assignment
      expect(test_assignment.name).to eq 'English essay'
      expect(test_assignment.score).to eq 0
    end
  end
end
