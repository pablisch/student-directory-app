# create an array of students
students = [
["Dr. Hannibal Lecter", :november ],
["Darth Vader", :november ],
["Nurse Ratchet", :november ],
["Michael Corleone", :november ],
["Alex DeLarge", :november ],
["The Wicked Witch of the West", :november ],
["Terminator", :november ],
["Freddy Krueger", :november ],
["The Joker", :november ],
["Joffrey Baratheon", :november ],
["Norman Bates", :november ],
]

# method to print student list header
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

# method to print the student list names list body
def print_list(names)
  names.each { |name| puts "#{name[0]} (#{name[1]} cohort)" }
end

# method to print the student list footer
def print_footer(names)
  puts "Overall, we have #{names.count} great students."
end

# call methods to print out all student list components
print_header
print_list(students)
print_footer(students)
