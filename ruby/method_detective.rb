# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

q1 = "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

q2 = "zom".insert(1,"o")
# => “zoom”

#Ah cjust should be center
q3 =  "enhance".center(15," ")
# => "    enhance    "

q4 = "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

q5 = "the usual".concat(" suspects")
#=> "the usual suspects"

q6 = " suspects".prepend("the usual")
# => "the usual suspects"

q7 = "The case of the disappearing last letter".slice(0..-2)
# => "The case of the disappearing last lette"

q8 = "The mystery of the missing first letter".slice(1..-1)
# => "he mystery of the missing first letter"

# Almost fell down a regular expression hole for this one haha
# Welp not seeing anything apart from replace gonna do this one last
  #quick outline
  #using .sub which can take a regular expression
  #identify 1 or more whitespaces
  #replace them with 1 whitespace
#Aha glad I came back to this!
#Need to do more research
#"Elementary,    my   dear        Watson!".sub(/+[" "]/g/," ") was not working

q9 = "Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"

q10 = "z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# It's the specific ordinal index of that character

q11 = "How many times does the letter 'a' appear in this string?".count("a")
# => 4

#show my results!
puts "#{q1}"
puts "#{q2}"
puts "#{q3}"
puts "#{q4}"
puts "#{q5}"
puts "#{q6}"
puts "#{q7}"
puts "#{q8}"
puts "#{q9}"
puts "#{q10}"
puts "#{q11}"