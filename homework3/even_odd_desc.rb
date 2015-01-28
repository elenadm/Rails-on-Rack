def even_odd_desc array
  array.sort { |x, y| y<=>x }.partition { |e| e.even? }.flatten
end
