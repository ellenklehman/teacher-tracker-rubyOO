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
      when 'lpd'
        projects_by_division
      when 'x'
        puts "Good-bye!"
      else
        puts "Sorry, that wasn't a valid option."
    end
  end
end

end
