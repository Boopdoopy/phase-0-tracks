#Takes a name and creates a fake name
#1.Swapping the first and last name
#2.Changing all of the vowels(a,e,i,o,u) to next vowel
#3.Change all of the consonant to the next consonant
#(b,c,d,f,g,h,j,k,l,m,n,p,q,r,s,t,v,w,x,y,z)

#name to array of first and last
#swap them
#back to string

#name to array of letters
#need to research methods better to be a string or array?
#map!
#3 cases
#/bcdfghjklmnpqrstvwxyz/
  #edge case z -> b
  #haha, no need to do the work just let ruby split it
#/aeiou/
  #edge case u -> a
#whitespace
#join

#haha! the encryption challenge previously!
#alphabet = "abcdefghijklmnopqrstuvwxyz"
  # puts "Enter your encrypted highly classified password"
  # c = gets.chomp 
  # i = 0
  # #puts c
  # length = c.length
  # until i == length do
  # b = c[i]
  # n = alphabet.index(b)
  # $decoded_message += alphabet[n-1]
  # i = i+=1
def loading (program = "Name encoder", i = 0)
  puts "#{program} initialized"
  sleep(0.25)
  puts "loading"
  loading_bar = [
    ". ",". ",
    ". ",". ",
    ". ",". "
  ]
  until i == 6
    print loading_bar[i]
    sleep(0.5)
    i += 1
  end
  puts "Ready!"
end

def codenames (n = "James Bond")
real_name = n.downcase
real_name = real_name.split()

real_name[0], real_name[1] = real_name[1], real_name[0]
reverse_name = real_name.join(' ')
reverse_name = reverse_name.split('')

reverse_name.map! do |letter|
  vowels = ["a","e","i","o","u"]
  consonants = [
    "b", "c", "d", 
    "f", "g", "h", 
    "j", "k", "l", 
    "m", "n", "p", 
    "q", "r", "s", 
    "t", "v", "w", 
    "x", "y", "z"
  ]
    cha = letter
      if cha != "u" and vowels.include?(cha) == true
        i = vowels.index(cha)
        i += 1
        letter = vowels[i]
      elsif cha != "z" and consonants.include?(cha) == true
        i = consonants.index(cha)
        i += 1
        letter = consonants[i]
      elsif cha == "u"
        letter = "a"
      elsif cha == "z"
        letter = "b"
      else
        letter = " "  
      end #conditional    
  end #do
reverse_name = reverse_name.join('').split(' ')
code_name = reverse_name.map{|names| names.capitalize}.join(' ')
end

#Driver code/UI

print "Hello agent\n"
sleep(0.25)


function = "N"
database = {
  :'Real name' => 'Alias'
}
  until function == "E"
    print "How can I help you today?\n(N)ame encoder  (A)lias database  (E)xit\n"
    function = gets.chomp!.upcase
    case function
      when "N"
        loading("Name encoder", 3)
        puts "Please enter a name"
        real_name = gets.chomp
        code_name = codenames(real_name)
        database.store(real_name, code_name)
        puts "encoded"
        puts "Alias is #{code_name}"
      when "A"
        loading("Alias database")
        puts "     ---------"
        database.each{|key,value| puts "#{key}\'s codename is #{value}\n     ---------"}
      when "E"
        puts "Deleting data\n\n"
        sleep(0.25)
        puts "Initializing magnet bath\n\n"
        sleep(0.25)
        puts "⚡⚡⚡⚡◖|✖_✖|◗⚡⚡⚡⚡"
        sleep(1)
        puts "    ◖|-_-|◗"
        sleep(2)
        puts "    ◖|^_^|◗"
        puts "Whew! Goodbye!\n\n"
        break
      else
        puts "Error"
        next
    end
  end





#Provide a user interface that lets a user enter a name and get a fake name back. 
#Let the user do this repeatedly until they decide to quit by typing 'quit'. 
#(They might just hit Enter to continue.)

# Use a data structure to store the fake names as they are entered. 
# When the user exits the program, iterate through the data structure and print all of the data the user entered. 
# A sentence like "Vussit Gimodoe is actually Felicia Torres" or 
# "Felicia Torres is also known as Vussit Gimodoe" for each agent is fine.


