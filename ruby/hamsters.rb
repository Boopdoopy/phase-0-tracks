#Hamsters names (string + autoname?)(Ham S. Ter I,II,III,IV)
#Volume level (1-10)
#fur color (string)
#good candidate (boolean)
#Estimated age (set estimate age to (float) nil for N/A)

#Ask (gets.chomp, .to_i getf? getb?)

ham_name = ""
squeak_vol =  0
fur_color = ""
good_can_1 = ""
candidate = true
est_age = 0.0
placeholder_nm = ""
i = 1


ham_name = gets.chomp "Otherwise N/A"

ham_name = hamster_name.downcase

if ham_name == "N/A"
  ham_name = placeholder_nm
  i = i + 1  
end

placeholder_nm = "Hamstar the #{i}"

squeak_vol = gets.to_i ""

fur_color = gets.chomp ""

good_can1 = gets.chomp "y/n"

if good_can1 == y
  candidate = true

elsif good_can1 == n  
  candidate = false

else
  candidate = nil

end

est_age = gets.to_f ""

puts "Name:#{ham_name}/n Volume:#{squeak_vol}/n Fur color:#{squeak_vol}/n Candidate:#{candidate}/n Estimated Age::#{est_age}/n"




