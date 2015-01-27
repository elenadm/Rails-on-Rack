def all? array
  result = true
  for e in array
    break result = false if yield(e) == false
  end
  result
end
