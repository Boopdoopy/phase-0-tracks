# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

"zom".insert(1,"o")
# => “zoom”

#Ah cjust should be center
"enhance".center(4)
# => "    enhance    "

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".concat(" suspects")
#=> "the usual suspects"

" suspects".prepend("the usual")
# => "the usual suspects"

"The case of the disappearing last letter".slice(0..-2)
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".(1..-1)
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

"Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"

"z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# It's the specific ordinal index of that character

"How many times does the letter 'a' appear in this string?".count("a")
# => 4