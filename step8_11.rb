# Solution to Makers' precourse Week 4 Step 8 Task 11
# https://makersacademy.teachable.com/courses/256825/lectures/3989219

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name

  name = gets.tr("\n", "")
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} student#{"s" if students.size > 1}"
    # get another name from the user
    name = gets.tr("\n", "")
  end
  # return the array of students
  students
end

def print_header
  puts "The students of my cohort at Makers Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great student#{"s" if names.size > 1}"
end


students = input_students
if students.size > 0
  print_header
  print(students)
  print_footer(students)
end
