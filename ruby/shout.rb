module Shout
  def yell_angrily(words)
    words.upcase + "!!!!" + " ヽ(ò益óˇ)ﾉ"
  end
  def yell_happily(words)
    words + "!!!!!" + "ヽ(^‿^ )ﾉ"
  end

  # def self.yell_angrily(words)
  #   words.upcase + "!!!!" + " ヽ(ò益óˇ)ﾉ"
  # end
  # def self.yelling_happily(words)
  #   words + "!!!!!" + "ヽ(^‿^ )ﾉ"
  # end
end

class Soccer_fan
  include Shout
  def initialize
    puts "beautiful day for football"
  end
end

class Tired_parent
  include Shout
  def initialize
    puts "yawn"
  end
end
#----------Driver code

has_not_slept = Tired_parent.new
p has_not_slept.yell_angrily("Go to bed")
p has_not_slept.yell_happily("My bed")


amazing_cross = Soccer_fan.new
p amazing_cross.yell_happily("GOOOOOOAL!!!")
p amazing_cross.yell_angrily("The ref is blind")





# #I ate all the chocolate yesterday
# p Shout.yell_angrily("but i wanted some today")

# #But I brought you pie!
# p Shout.yelling_happily("You shouldn't have!")

