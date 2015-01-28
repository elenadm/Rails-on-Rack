def count array
  result = 0
  for e in array
    result += 1 if yield(e)
  end
  result
end
