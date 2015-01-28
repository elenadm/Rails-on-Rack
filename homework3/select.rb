def reduce array, initial_value
  result = initial_value
  for e in array
    result = yield(result, e)
  end
  result
end

def select array, &block
  reduce array, [] do |res, e|
    block.call(e) ? res << e : res
  end
end
