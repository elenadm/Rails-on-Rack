#instance_eval
class K
end
K.instance_eval 'def say;"Hello"; end'
p K.say #Hello
k = K.new
#p k.say #undefined method `say'

class K
	def self.say
		2
	end
end
puts K.say #2

#block
class Circle
  attr_accessor  :radius, :center
  def initialize (&block)
   	yield self #block.call(self)
  end
end

a = Circle.new do |c|
	c.radius = 12
	c.center = [5, 6]
end
p a #<Circle:0x007fc82dfd50c8 @radius=12, @center=[5, 6]>

# instance_eval with block v1
class Circle
  def radius(v)
  	@radius = v
  end
  def center(v)
  	@center = v
  end

  def initialize (&block)
    self.instance_eval(&block) #выполняет блок в контексте объекта, в котором был вызван эвал
  end
end

a = Circle.new do
	center [5, 6]
  radius 12
  #radius = 12 присваивание локальной переменной, не будет вызова метода; вариант исправления: self.radius = 12
end
p a

# instance_eval with block v2
class CircleDSL #вспомогательный объект для построения
  def initialize (circle)
    @circle = circle
  end
  def radius(r)
  	@circle.radius = r
  end
  def center(v)
  	@circle.center = v
  end
  def enlarge
  	@circle.radius *= 2
  end
end

class Circle
  attr_accessor  :radius, :center
  def initialize (&block)
   	CircleDSL.new(self).instance_eval(&block)
  end
end
a = Circle.new do
	radius 12
	center [5, 6]
end
p a
