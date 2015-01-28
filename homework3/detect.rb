def reduce array, initial_value
  result = initial_value
  for e in array
    result = yield(result, e)
  end
  result
end

def detect array, &block
  reduce array, nil do |res, e|
    break e if block.call(e)
  end
end
