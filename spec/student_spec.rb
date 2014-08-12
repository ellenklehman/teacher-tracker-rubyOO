require 'rspec'
require 'student'

describe 'Student' do
  describe 'initialize' do
    it 'initializes with a name and an empty array of assignments' do
      test_student = Student.new({'name' => 'Johnny Appleseed'})
      expect(test_student).to be_an_instance_of Student
      expect(test_student.name).to eq 'Johnny Appleseed'
      expect(test_student.assignments).to eq []
    end
  end

  describe 'add_assignment' do
    it 'adds an assignment to a student' do
      test_student = Student.new({'name' => 'Johnny Appleseed'})
      test_assignment = Assignment.new({'name' => 'English essay', 'score' => 0})
      test_student.add_assignment(test_assignment)
      expect(test_student.assignments).to eq [test_assignment]
    end
  end

end
