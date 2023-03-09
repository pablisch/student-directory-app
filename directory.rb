# Solution to Makers' precourse Week 4 Step 8 Task 11
# https://makersacademy.teachable.com/courses/256825/lectures/3989219

@students = []

def print_menu
  puts
  puts "1. Input the students", "2. Show the students", "3. Save the list to students.csv", "4. Load the list from students.csv", "9. Exit"
end

def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end

def process(sele)
  sele.to_i == 1 ? input_students :
  sele.to_i == 2 ? show_students :
  sele.to_i == 3 ? save_students :
  sele.to_i == 4 ? load_students :
  sele.to_i == 5 ? choose_filename :
  sele.to_i == 9 ? exit : 
  (puts "I don't know what you meant, try again")
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  name = STDIN.gets.chomp
  while !name.empty? do
    create_students_array(name)
    puts "Now we have #{@students.count} student#{"s" if @students.size > 1}"
    puts "Add another or press ENTER to return to the main menu"
    name = STDIN.gets.chomp
  end
end

def choose_filename
  puts "choose a csv filename or type 'd' for the default (students.csv)"
  input = STDIN.gets.chomp
  if input.upcase == "D"
    filename = "students.csv"
  elsif input[-4, 4] == ".csv"
    filename = input
  else
    filename = "#{input}.csv"
  end
  filename
end

def load_students
  filename = choose_filename
  unless File.exists?(filename)
    puts "No such file"
    exit
  end
  file = File.open(filename)
  file.readlines.each do |line|
    name, cohort = line.chomp.split(",")
    create_students_array(name)
  end
  file.close
  puts "#{@students.size} students have been loaded from #{filename}"
  puts
end

def create_students_array(name, cohort = "March 2023")
  @students << {name: name, cohort: cohort.to_sym}
end

def show_students
  print_header
  print_student_list
  print_footer
end

def print_header
  puts "The students of Makers Academy"
  puts "-------------"
end

def print_student_list
  @students.each { |student| puts "#{student[:name]} (#{student[:cohort]} cohort)" }
end

def print_footer
  puts "Overall, we have #{@students.count} great student#{"s" unless @students.size == 1 }"
end

def save_students
  filename = choose_filename
  file = File.open(filename, "w")
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  puts "#{@students.size} students have been saved to #{filename}"
end

load_students
show_students
interactive_menu

