require_relative "mammal"

class Monkey < Mammal
  def swing
    puts "i can swing!"
  end

  def speak(action)
    super
    puts "HoWWOo WHoWo"
  end

  def perform
    eat
    swing
    speak("Hello")
  end
end