#!/Users/roygardiner/.rvm/rubies/ruby-2.0.0-p353/bin/ruby

# Define a list of names

students = [
 {name: 'Berta Gutierrez',cohort: :november},
 {name: 'Megan Folsom',cohort: :november},
 {name: 'Rolando Barbella',cohort: :november},
 {name: 'James Hunter',cohort: :november},	
 {name: 'Abraham Thomas',cohort: :november},
 {name: 'Roy Gardiner',cohort: :november},	 
 {name: 'Jorja Tracy Hung',cohort: :november},	
 {name: 'Colin Frankish',cohort: :november},	
 {name: 'yaz Goulamabasse',cohort: :november},	
 {name: 'Kalle Malmiharju',cohort: :november},	
 {name: 'Andrey Krahmal',cohort: :november},	
 {name: 'Biwek Shrestha',cohort: :november},	
 {name: 'Mihai-Liviu Cojocar',cohort: :november},	
 {name: 'Makis Otman',cohort: :november},
 {name: 'Nabin Rai',cohort: :november}, 
 {name: 'Peter Saxton',cohort: :november}
]

def input_students
   
   students = []
   
   print "Please enter student information; "
   print "to finish, just hit return twice\n"
      
   print "please enter the name of the student\n"
   name = gets.chomp
   
   print "please enter the student's country of origin\n"
   name = gets.chomp

   


   while !name.empty?  do

      students << {:name => name, :cohort => :november}
      print "Now we have #{students.length} students\n"
      name = gets.chomp
   end
   students
end

def print_header 		
   print "The Students of my cohort at Makers Academy\n"
   print "===========================================\n"
end

def print_names(names)

   i = 0
   while i < names.length    
#   names.each_with_index do |student,i|

# this suffix business, I could equally well put a comma at the end of every clause then strip it off just before printing.
      student = names[i]
      suffix = '' 
      comma = ''
      if student[:name].chr == 'f' then 
          suffix =   suffix + comma + ' 1st letter "f"' 
          comma = ','
      end   

      if student[:name].length < 12 then 
          suffix =  suffix + comma + ' less than 12 letters'
          comma = ','
      end  


      print "#{i+1}: #{student[:name]} in #{student[:cohort]} cohort." + suffix + "\n"
      i = i + 1
   end 
end

def print_footer(names)
   print "Overall we have #{names.length} fine Students\n"
end  

students = input_students

print_header
print_names(students)
print_footer(students)