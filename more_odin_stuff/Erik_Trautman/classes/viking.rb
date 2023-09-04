class Viking
  def initialize(name, age, health, strength)
      @name = name
      @age = age
      @health = health
      @strength = strength
  end

end


#how to do avibe but better


class Viking
  attr_accessor :name, :age, :health, :strength

  def take_damage(damage)
    self.health -= damage
    # OR we could have said @health -= damage
    self.shout("OUCH!")
end
def shout(str)
    puts str
end
def sleep
  @health += 1 unless health >= 99   # ! FAIL !
end

end
