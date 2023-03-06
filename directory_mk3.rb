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
  puts "The students of Villains Academy".center(40)
  puts "-------------".center(40)
end

# method to print the student list names list body
def print_list(students)
  # 👇🏻 with_index to add number before the student name
  # students.each_with_index { |student, index| puts "#{index + 1}: #{student[:name]} (#{student[:cohort]} cohort)" }
  # 👇🏻 to print names that begin with 'P'
  # students.each_with_index { |student, index| puts "#{index + 1}: #{student[:name]} (#{student[:cohort]} cohort)" if student[:name][0].downcase == 'p'  }
  # 👇🏻 to print names that are under 12 characters
  # students.each_with_index { |student, index| puts "#{index + 1}: #{student[:name]} (#{student[:cohort]} cohort)" if student[:name].size < 12 }
  i = 0
  while i < students.size do
    puts "#{i + 1}: #{students[i][:name]} (#{students[i][:cohort]} cohort)".center(40)
    i += 1
  end
end

# method to print the student list footer
def print_footer(students)
  puts "Overall, we have #{students.count} great students.".center(40)
end

students = input_students
# call methods to print out all student list components
print_header
print_list(students)
print_footer(students)
