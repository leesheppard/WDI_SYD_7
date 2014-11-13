require_relative "animal"

class Mammal < Animal
  def eat
    puts "I can eat! Yum yum yum"
  end

  def speak(action)
    puts action
    puts "i can speak"
  end
end