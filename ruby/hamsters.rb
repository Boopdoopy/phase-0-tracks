#Hamsters names (string + autoname?)(Ham S. Ter I,II,III,IV)
#Volume level (1-10)
#fur color (string)
#good candidate (boolean)
#Estimated age (set estimate age to (float) nil for N/A)

#Ask (gets.chomp, .to_i getf? getb?)

#ham_name = ""
#squeak_vol = 0
#fur_color = ""
#good_can_1 = ""
#candidate = true
#est_age = 0.0
#placeholder_nm = ""
i = 1

puts "What's the hamster's name? If none put N/A"
ham_name = gets.chomp 
ham_name = ham_name.downcase

placeholder_nm = "Hamstar the #{i}"
if ham_name == "n/a"
  ham_name = placeholder_nm
  i = i + 1  
end

puts "On a scale of 1-10 how loud is this hamster?"
squeak_vol = gets.chomp 

squeak_vol = squeak_vol.to_i

puts "What color is this hamster's fur"
fur_color = gets.chomp 

puts "Good candidate for adoption? (y/n)"
good_can1 = gets.chomp 

if good_can1 == "y"
  candidate = true

elsif good_can1 == "n"  
  candidate = false

else
  candidate = nil

end

puts "How old is this hamster if unknown put N/A"
est_age = gets.chomp 
est_age = est_age.downcase

if est_age == "n/a"
  est_age = nil
else
  est_age = est_age.to_f
end 

puts "\<-------------\>\n Hamster data \n\<-------------\>\n \n Name:#{ham_name}\n Volume:#{squeak_vol}\n Fur color:#{fur_color}\n Candidate:#{candidate}\n Estimated Age:#{est_age}\n"




