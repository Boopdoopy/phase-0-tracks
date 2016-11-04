def array_search(x, y)
  count =0
  thing = false
  x.each do |found|
    if found == y
      p "There's #{count} #{y}('s)"
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

def fibo(input_i)
  @output_array = [0, 1]
  until @output_array.length == input_i
    @output_array << @output_array[-2] + @output_array[-1]
  end
  return @output_array
end



def bubblesort (array1)
finished = 1
counter = 0
length = array1.length
until finished == length
  if counter + finished == length
    counter = 0
    finished += 1  
  elsif array1[counter] > array1[counter+1]
    array1[counter], array1[counter+1] = array1[counter+1], array1[counter]
    counter += 1
  else
    counter += 1
  end
end
return array1
end

#/////////////////////////////////
#Driver code
air = [4,5,1,6,8,9,2,3]
puts "#{air}"

present = array_search(air,5)

nacci6 = fibo(6)
puts "#{nacci6}"

air_sorted = bubblesort(air)
puts "#{air_sorted}"

#______________________________________________________________________________________
#___________________________________Previous attempts__________________________________

#                           Glad we took a break and rethought it

# {|index|
#         if array_i[counter-1] != nil && index <= array_i[counter-1] 
#           array_i[counter], array_i[counter+1] = array_i[counter+1], array_i[counter]
        
#         elsif  array_i[counter+1] != nil && index >= array_i[counter+1]
#            array_i[counter], array_i[counter-1] = array_i[counter-1], array_i[counter]
#         else 
#           @finished += 1
#         end
#     #end
#       counter += 1}


#dunno how many ends
# def integerize (array_i)
#   @finished = 0
#   until array_i.length == @finished 
#     @finished = 0
#     @counter = 0
#     array_i.map!
#         if array_i[@counter-1] != nil && index <= array_i[@counter-1] 
#           array_i[@counter], array_i[@counter+1] = array_i[@counter+1], array_i[@counter]
        
#         elsif  array_i[@counter+1] != nil && index >= array_i[counter+1]
#            array_i[@counter], array_i[@counter-1] = array_i[@counter-1], array_i[@counter]
#         else 
#           @finished += 1
#         end
#       counter += 1 
#     end
#   end


  



#ORIGINAL PSEUDO CODE TIL WE REREAD THE LAST BIT OF THE RELEASE


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
 #unless???????


#RELEASE 0 and 1 scratchwork
#tester= [2,35,26,34,5,457,235,46,732,434,734,]
#Take an integer, and have an array of that integer length



