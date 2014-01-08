# first, print the list of students


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

def print_header 		
   puts "The Students of my cohort at Makers Academy"
   puts "==========================================="
end

def print(names)
   names.each do |student|
      puts student
   end 
end

def print_footer(names)
   puts "Overall we have #{names.length} fine Students"
end  

print_header
print(students)
print_footer(students)