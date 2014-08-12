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
end
