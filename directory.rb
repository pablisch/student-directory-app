# create an array of students
students = [
"Dr. Hannibal Lecter",
"Darth Vader",
"Nurse Ratchet",
"Michael Corleone",
"Alex DeLarge",
"The Wicked Witch of the West",
"Terminator",
"Freddy Krueger",
"The Joker",
"Joffrey Baratheon",
"Norman Bates"
]

# method to print student list header
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

# method to print the student list names list body
def print_list(names)
  names.each { |name| puts name }
end

# method to print the student list footer
def print_footer(names)
  puts "Overall, we have #{names.count} great students."
end

# call methods to print out all student list components
print_header
print_list(students)
print_footer(students)
