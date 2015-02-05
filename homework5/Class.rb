class Line
  def initialize (x1, y1, x2, y2, stroke_width = 1)
    @x1 = x1
    @y1 = y1
    @x2 = x2
    @y2 = y2
    @stroke_width = stroke_width
  end
end

class Rect
  def initialize (x, y, width, height)
    @x = x
    @y = y
    @width = width
    @height = height
  end
end

class Circle
  def initialize (cx, cy, r, fill = 'none')
    @cx = cx
    @cy = cy
    @r = r
    @fill = fill
  end
end

class Arrow
  def initialize (x1, y1, x2, y2)
    @x1 = x1
    @y1 = y1
    @x2 = x2
    @y2 = y2
  end
end
