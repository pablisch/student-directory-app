# create an array of students
# students = [
# {name: "Dr. Hannibal Lecter", cohort: :november },
# {name: "Darth Vader", cohort: :november },
# {name: "Nurse Ratchet", cohort: :november },
# {name: "Michael Corleone", cohort: :november },
# {name: "Alex DeLarge", cohort: :november },
# {name: "The Wicked Witch of the West", cohort: :november },
# {name: "Terminator", cohort: :november },
# {name: "Freddy Krueger", cohort: :november },
# {name: "The Joker", cohort: :november },
# {name: "Joffrey Baratheon", cohort: :november },
# {name: "Norman Bates", cohort: :november }
# ]

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create and empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of student hashes
  students
end

# method to print student list header
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

# method to print the student list names list body
def print_list(students)
  students.each { |student| puts "#{student[:name]} (#{student[:cohort]} cohort)" }
end

# method to print the student list footer
def print_footer(students)
  puts "Overall, we have #{students.count} great students."
end

# call methods to print out all student list components
students = input_students
print_header
print_list(students)
print_footer(students)
