#!/Users/roygardiner/.rvm/rubies/ruby-2.0.0-p353/bin/ruby

# Define a list of names

students = [
 {name: "Berta Gutierrez",cohort: :november},
 {name: "Megan Folsom",cohort: :november},
 {name: "Rolando Barbella",cohort: :november},
 {name: "James Hunter",cohort: :november},	
 {name: "Abraham Thomas",cohort: :november},
 {name: "Roy Gardiner",cohort: :november},	 
 {name: "Jorja Tracy Hung",cohort: :november},	
 {name: "Colin Frankish",cohort: :november},	
 {name: "yaz Goulamabasse",cohort: :november},	
 {name: "Kalle Malmiharju",cohort: :november},	
 {name: "Andrey Krahmal",cohort: :november},	
 {name: "Biwek Shrestha",cohort: :november},	
 {name: "Mihai-Liviu Cojocar",cohort: :november},	
 {name: "Makis Otman",cohort: :november},
 {name: "Nabin Rai",cohort: :november}, 
 {name: "Peter Saxton",cohort: :november}
]

def input_students

   print "please enter the names of the Students\n"
   puts "to finish, just hit return twice"
   
   students = []

   name = gets.chomp

   while !name.empty?  do

      students << {:name => name, :cohort => :november}
      puts "Now we have #{students.length} students"
      name = gets.chomp
   end
   students
end

def print_header 		
   puts "The Students of my cohort at Makers Academy"
   puts "==========================================="
end

def print_names(names)
   names.each do |student|
   	
      puts "#{student[:name]} in #{student[:cohort]} cohort"
   end 
end

def print_footer(names)
   puts "Overall we have #{names.length} fine Students"
end  

students = input_students

print_header
print_names(students)
print_footer(students)