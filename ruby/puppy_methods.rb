class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    int.times {puts "Woof!"}
  end

  def roll_over
  p "Roll over" 
  end
  
  def dog_years(int)
    int/7
  end

  def yawn
    p "Yawn"
  end
  
  def initialize
   p "Initializing new puppy instance ..."
  end

end

spot = Puppy.new

spot.speak(2)
spot.yawn
spot.fetch("toy")
spot.dog_years(45)

class Coffee_beans
  
  def initialize
    p "Initializing new coffee beans instance ..."
    @ground = false
  end

  def grind(int=1)
    p "Grinding #{int} ounces of coffee beans!" 
    @ground = true 
    self
  end

  def brew
    if @ground == false
    p "You have to grind your beans first!"  
    else
    p "Enjoy your coffee)"
    end
  end

end

arabica = Coffee_beans.new
 arabica.brew
 arabica.grind.brew

batch=(1..50).to_a

batch.map! do |x|
  x = Coffee_beans.new
end

batch.each {|x| x.grind(4).brew }

