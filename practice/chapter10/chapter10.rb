class Car
  def run(distance)
    puts "車で#{distance}キロ走ります。"
  end
end

class Tricycle < Car
end

tricycle = Tricycle.new
tricycle.run(5)