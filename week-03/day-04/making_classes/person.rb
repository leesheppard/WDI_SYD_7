class Person
  attr_accessor :name

  def breathe
    puts "...."
  end

  def speak
    breathe
  end

  def spew
    puts "BLEH!"
  end
end

class Baby < Person
  def speak
    super
    puts "Goo goo gah gah"
  end
end

jack_jr = Baby.new
jack_jr.name = "Jack Jr. Watson-Hamblin"
jack_jr.speak
#=> "Goo goo gah gah"
jack_jr.spew
#=> "BLEH!"

class Adult < Person
  def speak
    super
    puts "Hello my name is #{@name}"
  end
end

jack = Adult.new
jack.name = "Jack Watson-Hamblin"
jack.speak
#=> "Hello my name is Jack Watson-Hamblin"
jack.spew
#=> "BLEH!"