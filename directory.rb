# first, print the list of students


students = [
 ["Berta Gutierrez", :November],
 ["Megan Folsom",:november],
 ["Rolando Barbella",:november],
 ["James Hunter",:november],	
 ["Abraham Thomas",:november],
 ["Roy Gardiner",:november],	 
 ["Jorja Tracy Hung",:november],	
 ["Colin Frankish",:november],	
 ["yaz Goulamabasse",:november],	
 ["Kalle Malmiharju",:november],	
 ["Andrey Krahmal",:november],	
 ["Biwek Shrestha",:november],	
 ["Mihai-Liviu Cojocar",:november],	
 ["Makis Otman",:november],
 ["Nabin Rai",:november], 
 ["Peter Saxton",:november]
]

def print_header 		
   puts "The Students of my cohort at Makers Academy"
   puts "==========================================="
end

def print(names)
   names.each do |student|
      puts "#{student[0]} in #{student[1]} cohort"
   end 
end

def print_footer(names)
   puts "Overall we have #{names.length} fine Students"
end  

print_header
print(students)
print_footer(students)