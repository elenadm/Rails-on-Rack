def reduce array, initial_value
  l = array.length
  result = initial_value
  for i in 0...l
    result = yield(result, array[i])
  end
  result
end
