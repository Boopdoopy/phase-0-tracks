# map! { |item| block } → ary

numbers = [4,5,6]

days = {
  "monday" => 1,
  "tuesday" => 2,
  "wednesday" => 3
}


# 1. array --> map
# food.delete_if  do |e|
#         e.count("z") > 0
#         end
# meals.delete_if { |time, value| time == "morning"}
# 2. both --> each
# numbers.delete_if { |n| n > 5} 
# days.delete_if { |d, v| v > 2}
# # 3. both --> each
# numbers.keep_if { |m| m * 2 == 8}
# days.keep_if { |k, v| k == "wednesday"}
# # 4. array --> map! 
numbers.drop_while { |x| x < 5 }

array1 = numbers.drop_while { |x| x < 5 }

p array1
p numbers
p days