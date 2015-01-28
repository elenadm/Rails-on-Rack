def even_odd_desc array
  array.sort { |x, y| y<=>x }.partition { |e| e.even? }.flatten
end

def sort_by_length array
  array.sort_by { |e| e.length }
end
