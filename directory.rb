#!/Users/roygardiner/.rvm/rubies/ruby-2.0.0-p353/bin/ruby

# Define a list of names
cohort = ''
students = [
 {name: 'Berta Gutierrez',cohort: cohort},
 {name: 'Megan Folsom',cohort: cohort},
 {name: 'Rolando Barbella',cohort: cohort},
 {name: 'James Hunter',cohort: cohort},	
 {name: 'Abraham Thomas',cohort: cohort},
 {name: 'Roy Gardiner',cohort: cohort},	 
 {name: 'Jorja Tracy Hung',cohort: cohort},	
 {name: 'Colin Frankish',cohort: cohort},	
 {name: 'yaz Goulamabasse',cohort: cohort},	
 {name: 'Kalle Malmiharju',cohort: cohort},	
 {name: 'Andrey Krahmal',cohort: cohort},	
 {name: 'Biwek Shrestha',cohort: cohort},	
 {name: 'Mihai-Liviu Cojocar',cohort: cohort},	
 {name: 'Makis Otman',cohort: cohort},
 {name: 'Nabin Rai',cohort: cohort}, 
 {name: 'Peter Saxton',cohort: cohort}
]

def input_students
   
   students = []
   ess = ''
   
   print "Please enter student information; "
   print "to finish, just hit return twice\n"
      
   print "please enter the name and cohort of the student, separated by a comma\n"
   name_cohort = gets.chomp
   
   while !name_cohort.empty?  do

     pair = name_cohort.split(',') 
     name = pair[0].lstrip
     cohort = pair[1] 
     
     if pair.length > 1 then cohort = pair[1].lstrip
        else cohort = '' 
     end    
      
     print "please enter the student's country of origin\n"
     country = gets.chomp

     print "please enter a list of hobbies/interest\n"
     hobbies = gets.chomp 
  
     students << {:name => name, :cohort => cohort, :country => country, :hobbies => hobbies}
     print "Now we have #{students.length} student" + ess + "\n"
     ess = 's'
     
     print "please enter the name and cohort of the student, separated by a comma\n"   
     name_cohort = gets.chomp
  end
  students
end

def print_header 		
   print "The Students of my cohort at Makers Academy\n"
   print "===========================================\n"
end

def print_names(names,nameL,cohortL,countryL,hobbiesL)

nameL    = ["Name".length,nameL].max + 1
cohortL  = ["Cohort".length,cohortL].max + 1 
countryL = ["Nationality".length,countryL].max + 1
hobbiesL = ["Hobbies".length,hobbiesL].max + 1

cohorts =  ['January','April','July','October']

   puts "No.".ljust(5) + "Name".ljust(nameL) + "Cohort".ljust(cohortL) + "Nationality".ljust(countryL) + "Hobbies"

   

# this suffix business, I could equally well put a comma at the end of every clause then strip it off just before printing.
#      student = names[i]

  cohorts.each_with_index do |cohort,i|

    print "\n#{cohorts[i]} Cohort\n"

    names.each_with_index do |student,j|

      if cohort.downcase == student[:cohort].downcase then

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


        print "#{((j+1).to_s + ":").ljust(5)}"  + 
              "#{student[:name].ljust(nameL)}" + 
              "#{student[:cohort].to_s.ljust(cohortL)}" +
              "#{student[:country].ljust(countryL)}" + 
              "#{student[:hobbies].ljust(hobbiesL)}." + 
              suffix + "\n"
      end       
    end 
  end
end

def print_footer(names)
   print "Overall we have #{names.length} fine Students\n"
end  

students = input_students

nameL = 0
cohortL = 0
countryL = 0
hobbiesL = 0
students.each do |student|
   if student[:name].length > nameL then 
      nameL = student[:name].length
   end   
   if student[:cohort].length > cohortL then 
      cohortL = student[:cohort].length
   end 
   if student[:country].length > countryL then 
      countryL = student[:country].length
   end 
   if student[:hobbies].length > hobbiesL then 
      hobbiesL = student[:hobbies].length
   end 
end

print_header
print_names(students,nameL,cohortL,countryL,hobbiesL)
print_footer(students)