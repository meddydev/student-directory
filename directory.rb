@students = []

def print_menu
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
end

def show_students
    print_header
    print_students_list
    print_footer
end   

def process(selection)
    case selection
        when "1"
            students = input_students
        when "2"
            show_students
        when "9"
            exit
        else
            puts "I don't know what you meant, try again"
    end
end

def interactive_menu
    loop do
        print_menu
        process(gets.chomp)
    end
end

def input_students
    puts "Enter name of student"
    puts "To stop, hit return twice"
    name = gets.chomp
    while !name.empty? do
        @students << {name: name, cohort: :november}
        puts "Now we have #{@students.count} students"
        name = gets.chomp
    end
    @students
end

def print_header
    puts "The students of Villain Academy"
    puts "-------------"
end

def print_students_list
    @students.each do |student|
        puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
end

def print_footer
    if @students.count == 0
        puts "No students at Villain Academy"
    elsif @students.count == 1
        puts "Overall we have 1 great student"
    else
        puts "Overall we have #{@students.count} great students"
    end
end

interactive_menu