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

  describe 'save' do
    it 'saves the assignment into all_assignments' do
      test_assignment = Assignment.new({'name' => 'English essay', 'score' => 0})
      test_assignment.save
      expect(Assignment.all).to eq [test_assignment]
    end
  end

  describe 'add_score' do
    it 'calculates the assignment score and stores it in the assignment object' do
      test_assignment = Assignment.new({'name' => 'English essay', 'score' => 0})
      test_assignment.add_score(50.0, 30.0)
      expect(test_assignment.score).to eq 60.0
    end
  end
end
