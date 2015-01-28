def reduce array, initial_value
  result = initial_value
  for e in array
    result = yield(result, e)
  end
  result
end

def map array, &block
  reduce array, [] do |res, e|
    res << block.call(e)
  end
end
