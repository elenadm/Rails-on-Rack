def detect array
  for e in array
    break result = e if yield(e)
  end
  result
end
