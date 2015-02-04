def flatten array
  result = []
  while !array.empty?
    a = array.pop
    if a.is_a?(Array)
      array += a
    else
      result << a
    end
  end
  result.reverse
end

def flatten_v2(array, result = [])
  array.each do |el|
    if el.is_a?(Array)
      flatten_v2 el, result
    else
      result << el
    end
  end
  result
end
