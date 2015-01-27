def select array
  result = Array.new
  for e in array
    result << e if yield(e)
  end
  result
end
