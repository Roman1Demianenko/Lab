# Абстракция
class Shape
  def initialize(color)
    @color = color
  end

  def draw
    raise NotImplementedError, "Method"
  end
end

# Конкретная абстракция
class Circle < Shape
  def draw
    puts "Drawing a #{@color} circle"
  end
end

class Square < Shape
  def draw
    puts "Drawing a #{@color} square"
  end
end

# Реализация
class RedColor
  def to_s
    "red"
  end
end

class BlueColor
  def to_s
    "blue"
  end
end

# Использование
circle = Circle.new(RedColor.new)
circle.draw

square = Square.new(BlueColor.new)
square.draw
