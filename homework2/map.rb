def map array
  l = array.length
  for i in 0...l
    array[i] = yield array[i]
  end
  array
end
