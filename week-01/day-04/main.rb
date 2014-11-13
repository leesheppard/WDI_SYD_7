class Animal
  def move
    puts "I can move!"
  end
end

class Mammal < Animal
  def eat
    puts "I can eat! Yum yum yum"
  end

  def speak(action)
    puts action
    puts "i can speak"
  end
end

class Monkey < Mammal
  def swing
    puts "i can swing!"
  end

  def speak(action)
    super.eat
    puts "HoWWOo WHoWo"
  end

  def performance
    eat
    swing
    speak("Hello")
  end
end

timmy = Monkey.new











