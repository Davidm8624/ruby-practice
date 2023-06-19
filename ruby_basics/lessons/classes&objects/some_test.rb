class Car
  attr_accessor :year, :color, :make, :model, :speed

  def initialize(y, c, brand, m)
    @year = y
    @color = c
    @make = brand
    @model = m
    @speed = 0
  end

    def change_info(y, c, brand, m)
    self.year = y
    self.color = c
    self.make = brand
    self.model = m
  end
  
  def zoom 
    @speed = @speed + 1
  end
  
  def slow
    @speed = @speed - 1
      if @speed == 0
        puts "car is turned off"
      end
  end

  def info
    "the #{year} #{color} #{make} #{model} is going #{speed} MPH"
  end

  def quick_id
    puts "it's a #{model}"
  end

  def paint (color)
    self.color = color
  end

end

Sports_car = Car.new(2020, "yellow", "ford", "mustang")
puts Sports_car.info
Sports_car.zoom
puts Sports_car.info
Sports_car.slow
puts Sports_car.info
Sports_car.change_info(1906, "black", "ford", "model-t")
puts Sports_car.info
Sports_car.quick_id
Sports_car.paint("white")
puts Sports_car.info