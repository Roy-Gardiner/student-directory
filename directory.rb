# first, print the list of students
puts "The Students of my cohort at Makers Academy"
puts "==========================================="

students = [
 "Berta Gutierrez",
 "Megan Folsom",
 "Rolando Barbella",
 "James Hunter",	
 "Abraham Thomas",
 "Roy Gardiner",	 
 "Jorja Tracy Hung",	
 "Colin Frankish",	
 "yaz Goulamabasse",	
 "Kalle Malmiharju",	
 "Andrey Krahmal",	
 "Biwek Shrestha",	
 "Mihai-Liviu Cojocar",	
 "Makis Otman",
 "Nabin Rai", 
 "Peter Saxton"
]

students.each do |student|
   puts student
end   

# Then print the total number

puts "Overall we have #{students.length} fine Students"
