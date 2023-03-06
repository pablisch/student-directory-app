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

students = input_students
# call methods to print out all student list components
print_header
print_list(students)
print_footer(students)
