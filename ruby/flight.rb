
module Flight
  def take_off(altitude)
    print "taking off and ascending until reaching #{altitude} feet..."
  end
end

class Bird 
  def initialize
    puts "Caw caw"
  end
  include Flight
end

class Plane
  def initialize
    puts "This is your captain speaking"
  end
  include Flight
end

class Superman
  include Flight
  def initialize
    puts "Mild mannered Clark Kent, reporter at the daily planet..."
  end
end


its_a = [
albatross = Bird.new,
boeing747 = Plane.new,
clark = Superman.new
]
#Morning rush-hour
its_a.each do |x|
  print "\n#{x.class} " 
  x.take_off(800)
end
