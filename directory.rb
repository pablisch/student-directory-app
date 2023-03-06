# create an array of students
students = [
{name: "Dr. Hannibal Lecter", cohort: :november },
{name: "Darth Vader", cohort: :november },
{name: "Nurse Ratchet", cohort: :november },
{name: "Michael Corleone", cohort: :november },
{name: "Alex DeLarge", cohort: :november },
{name: "The Wicked Witch of the West", cohort: :november },
{name: "Terminator", cohort: :november },
{name: "Freddy Krueger", cohort: :november },
{name: "The Joker", cohort: :november },
{name: "Joffrey Baratheon", cohort: :november },
{name: "Norman Bates", cohort: :november }
]

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
print_header
print_list(students)
print_footer(students)
