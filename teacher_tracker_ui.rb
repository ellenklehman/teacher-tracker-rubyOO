require './lib/period'
require './lib/student'
require './lib/assignment'

def welcome
  puts "Welcome to the Teacher Tracker!\n\n"
  menu
end

def menu
  choice = nil
  until choice == 'x'
    puts "Enter 'p' to add a period, 's' to add a student to a period, or 'a' to add an assignment to a student.\n"
    puts "Enter 'lp' to list all periods, 'ls' to list all students, 'la' to list all assignments.\n"
     puts "Enter 'lsp' to list all students in a period, 'las' to list all assignments for a student.\n"
    puts "Enter 'x' to exit."
    choice = gets.chomp
    case choice
      when 'p'
        add_period
      when 's'
        add_student
      when 'a'
        add_assignment
      when 'lp'
        list_periods
      when 'ls'
        list_students
      when 'la'
        list_assignments
      when 'lsp'
        list_students_by_period
      when 'las'
        list_assignments_by_student
      when 'x'
        puts "Good-bye!"
      else
        puts "Sorry, that wasn't a valid option."
    end
  end
end

def add_period
  puts "Please enter a name for this new period."
  new_period = gets.chomp
  period = Period.new({'name' => new_period})
  period.save
end


def add_student
  list_periods
  "\n"
  puts "Please enter the name of the period you would like to add a student to."
  selected_period = gets.chomp
  puts "Please enter a name for this new student."
  new_student = gets.chomp
  student = Student.new({'name' => new_student})
  student.save
  Period.all.each do |period|
    if selected_period == period.name
      period.add_student(student)
    end
  end
  puts "#{new_student} was added successfully."
end


def add_assignment
  list_students
  "\n"
  puts "Please enter the name of the student you would like to add an assignment to."
  selected_student = gets.chomp
  puts "Please enter a name for this new assignment"
  new_assignment = gets.chomp
  puts "Please enter the total point value of #{new_assignment}."
  total_value = gets.chomp.to_f
  puts "Please enter #{selected_student}'s score for this assignment."
  student_score = gets.chomp.to_f
  percentage = student_score / total_value * 100
  assignment = Assignment.new({'name' => new_assignment, 'score' => percentage})
  assignment.save
  Student.all.each do |student|
    if selected_student == student.name
      student.add_assignment(assignment)
    end
  end
  puts "#{new_assignment} added succesfully. \n"
end

def list_periods
  Period.all.each do |period|
    puts period.name
  end
end

def list_students
  Student.all.each do |student|
    puts student.name
  end
end

def list_assignments
  Assignment.all.each do |assignment|
    puts "Assignment: #{assignment.name}  Percentage: #{assignment.score}"
  end
end

def list_students_by_period
  list_periods
  puts "Please enter the name of the period to list its students"
  selected_period = gets.chomp
  Period.all.each do |period|
    if selected_period == period.name
      period.students.each do |student|
        puts student.name
      end
    end
  end
end

def list_assignments_by_student
  list_students
  puts "Please enter the name of the student to list his/her assignments"
  selected_student = gets.chomp
  Student.all.each do |student|
    if selected_student == student.name
      student.assignments.each do |assignment|
        puts "Assignment: #{assignment.name}  Percentage: #{assignment.score}"
      end
    end
  end
end
welcome
