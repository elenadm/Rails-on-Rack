def reduce array, initial_value
  result = initial_value
  for e in array
    result = yield(result, e)
  end
  result
end

def count array, &block
  reduce array, 0 do |res, e|
    block.call(e) ? res + 1 : res
  end
end
