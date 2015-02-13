class SVG
  def self.method_missing(name, *args, &block)
    attrs_collector = Attr.new
    block_context = eval 'self', block.binding
    block_context.instance_variables.each do |var_name|
      attrs_collector.instance_variable_set(var_name, block_context.instance_variable_get(var_name))
    end
    attrs_collector.instance_eval &block
    "<#{name} #{attrs_collector.hash_to_string}/>"
  end
end

class Attr
  attr_reader :attrs

  def initialize (attrs = {})
    @attrs = attrs
  end

  def method_missing(name, attr)
    @attrs[name] = attr
  end

  def hash_to_string
    attrs.merge!("stroke" => "black")
    attrs.map { |k, v| "#{k}='#{v}'" }.join(' ')
  end
end

class Line
  def initialize (x1, y1, x2, y2, stroke_width = 1)
    @x1, @y1, @x2, @y2, @stroke_width = x1, y1, x2, y2, stroke_width
  end

  def draw
    SVG.line do
      x1 @x1
      x2 @x2
      y1 @y1
      y2 @y2
      stroke_width @stroke_width
    end
  end

end

class Rect

  def initialize (x, y, width, height, fill = 'none')
    @x, @y, @width, @height, @fill = x, y, width, height, fill
  end

  def draw
    SVG.rect do
      x @x
      y @y
      width @width
      height @height
      fill @fill
    end
  end
end

class Circle

  def initialize (cx, cy, r, fill = 'none')
    @cx, @cy, @r, @fill = cx, cy, r, fill
  end

  def draw
    SVG.circle do
      cx @cx
      cy @cy
      r @r
      fill @fill
    end
  end
end

class Arrow

  def initialize (x1, y1, x2, y2)
    @x1, @y1, @x2, @y2 = x1, y1, x2, y2
  end

  def draw
    SVG.line do
      x1 @x1
      x2 @x2
      y1 @y1
      y2 @y2
    end  +
    SVG.rect do
      x (@x2-2)
      y (@y2-2)
      width 2
      height 4
      fill "black"
    end
  end
end

elements = Array.new
elements = [
    Line.new(50, 160, 50, 220),
    Rect.new(42, 120, 16, 40),
    Line.new(75, 235, 100, 235),
    Line.new(50, 275, 200, 275),
    Circle.new(50, 180, 3, 'black'),
    Line.new(50, 100, 50, 120),
    Arrow.new(200, 250, 175, 240),
    Line.new(75, 220, 75, 250, 3),
    Circle.new(100, 100, 3, 'black'),
    Line.new(100, 160, 100, 180),
    Line.new(200, 220, 175, 230),
    Line.new(110, 290, 140, 290),
    Line.new(178, 165, 178, 195),
    Line.new(200, 160, 200, 220),
    Line.new(100, 180, 150, 235),
    Line.new(150, 180, 100, 235),
    Line.new(200, 250, 200, 275),
    Line.new(200, 100, 200, 120),
    Circle.new(125, 275, 3, 'black'),
    Line.new(78, 165, 78, 195),
    Arrow.new(50, 100, 250, 100),
    Circle.new(100, 180, 3, 'black'),
    Line.new(100, 100, 100, 120),
    Rect.new(92, 120, 16, 40),
    Circle.new(200, 100, 3, 'black'),
    Circle.new(200, 180, 3, 'black'),
    Line.new(50, 180, 72, 180),
    Line.new(72, 165, 72, 195),
    Circle.new(70, 235, 25),
    Line.new(150, 100, 150, 120),
    Line.new(125, 275, 125, 290),
    Line.new(78, 180, 100, 180),
    Line.new(150, 180, 172, 180),
    Circle.new(180, 235, 25),
    Line.new(172, 165, 172, 195),
    Circle.new(150, 180, 3, 'black'),
    Arrow.new(178, 180, 250, 180),
    Line.new(150, 160, 150, 180),
    Line.new(175, 235, 150, 235),
    Rect.new(142, 120, 16, 40),
    Line.new(50, 250, 50, 275),
    Circle.new(150, 100, 3, 'black'),
    Rect.new(192, 120, 16, 40),
    Line.new(50, 220, 75, 230),
    Line.new(175, 220, 175, 250, 3),
    Arrow.new(50, 250, 75, 240)]

drawed_content = ''
elements.each { |e| drawed_content += e.draw }

File.open("geometric_figure.svg", "wb") do |f|
  str ='<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<svg xmlns="http://www.w3.org/2000/svg" version="1.1" width="300" height="300">' + drawed_content.to_s + '</svg>'
  f.write(str)
end
