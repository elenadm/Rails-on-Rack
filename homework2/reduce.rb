def reduce array, initial_value
  result = initial_value
  for e in array
    result = yield(result, e)
  end
  result
end
