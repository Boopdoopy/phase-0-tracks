module Shout
  def self.yell_angrily(words)
    words.upcase + "!!!!" + " ヽ(ò益óˇ)ﾉ"
  end
  def self.yelling_happily(words)
    words + "!!!!!" + "ヽ(^‿^ )ﾉ"
  end
end


#I ate all the chocolate yesterday
p Shout.yell_angrily("but i wanted some today")

#But I brought you pie!
p Shout.yelling_happily("You shouldn't have!")

