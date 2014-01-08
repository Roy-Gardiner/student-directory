# first, print the list of students


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

def print_header 		
   puts "The Students of my cohort at Makers Academy"
   puts "==========================================="
end

def print(names)
   names.each do |student|
      puts "#{student[:name]} in #{student[:cohort]} cohort"
   end 
end

def print_footer(names)
   puts "Overall we have #{names.length} fine Students"
end  

print_header
print(students)
print_footer(students)