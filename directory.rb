def input_students
    puts "Enter name of student"
    puts "To stop, hit return twice"
    students = []
    name = gets.chomp
    while !name.empty? do
        students << {name: name, cohort: :november}
        puts "Now we have #{students.count} students"
        name = gets.chomp
    end
    students
end

def print_header
    puts "The students of Villain Academy"
    puts "-------------"
end

def print(students)
    students.each do |student|
        puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
end

def print_footer(students)
    puts "Overall we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)