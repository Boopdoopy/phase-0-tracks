def array_search(x, y)
  count =0
  thing = false
  x.each do |found|
    if found == y
      p count
      thing = true
      count +=1
    else
      count +=1
    end

    end
    if thing == false
      p nil
  end
end

tester= [2,35,26,34,5,457,235,46,732,434,734,]
#Take an integer, and have an array of that integer length

def fibo(input_i)
  @output_array = [0, 1]
  until @output_array.length == input_i
    @output_array << @output_array[-2] + @output_array[-1]
  end
  return @output_array
end

def alphabetize (string)
alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
counter = 0
# fully_sorted == false
str_array = string.split(//)
str_array.each do |letter|
  letter_id = alphabet.find_index(letter)
  #issues for a and z?
  right = str_array[counter+1]
  left = str_array[counter-1]

  right = alphabet.find_index(right)
  left = alphabet.find_index(left)

  unless letter_id >= right && letter_id <= left
      case letter_id
        when <= right
          str_array[counter], str_array[counter+1] = str_array[counter+1], str_array[counter]
        when >= left
          str_array[counter], str_array[counter-1] = str_array[counter-1], str_array[counter]
      end
      counter += 1
    end
  end
end
   

  #get letter
  #find said in alphabet
  #return the index number

  #unless fully_sorted == true

  #string[counter]  
  #end
#take a string
#iterate through each letter of the string
#counter/index

# loop -V

#compare the value of the cha to the alphabet value => index

  


#condition if +1 is less than and/or if -1 is 
#greater than it will switch them
#keep doing that til both +1 is greater and -1 is less

#increase the counter^^
#iterate one step of the string
#loop again again
