def any? array
  result = false
  for e in array
    break result = true if yield(e)
  end
  result
end
