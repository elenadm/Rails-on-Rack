def flatten array
  result = []
  while !array.empty?
    a = array.pop
    if a.is_a?(Array)
      array.push(*a)
    else
      result << a
    end
  end
  result.reverse
end
