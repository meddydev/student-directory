def input_students
    puts "Enter name of student"
    puts "To stop, hit return twice at each prompt"
    students = []
    name = gets.chop
    puts "enter cohort"
    cohort = gets.chop
    while !name.empty? do
        puts "Height in cm?"
        height_in_cm = gets.chop
        students << {name: name, cohort: cohort.to_s, height: height_in_cm}
        puts "Now we have #{students.count} students"
        puts "enter name"
        name = gets.chop
        puts "enter cohort"
        cohort = gets.chop
    end
    students
end

def print_header
    puts "The students of Villain Academy"
    puts "-------------"
end

def print(students)
    cohort_list = []
    students.each do |student|
        if cohort_list.include?(student[:cohort]) == false
            cohort_list.push(student[:cohort])
        end
    end
    cohort_list.each do |cohort|
        students.each do |student|
            if student[:cohort] == cohort
                puts "#{cohort}: #{student[:name]} who is #{student[:height]} tall"
            end
        end
    end
end

def print_footer(students)
    if students.count == 1
        puts "Overall we have 1 great student"
    else
        puts "Overall we have #{students.count} great students"
    end
end

students = input_students
print_header
print(students)
print_footer(students)