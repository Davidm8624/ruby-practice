class Animal
  def initialize(name)
    puts "#{name} is born!"
  end

  def say(phrase = 'nothing')
    return if phrase.empty? #invesrse of saying: if phrase.empty -> return      will return with default value inserted

    #if phrase is not empty it continues to this line
    "i said #{format(phrase)}"
end

private #makes all the stuff under only accesable by inside the animal class
#so i cant type new_animal.format. but in the above say method it can still be reached
#
def format(string)
  string.upcase
end

public

end

new_animal = Animal.new("joey") #when .new is called it automaticly calls .initialize aswell
puts new_animal.say("hello")

