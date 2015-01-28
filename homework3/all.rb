def reduce array, initial_value
  result = initial_value
  for e in array
    result = yield(result, e)
  end
  result
end

def all? array, &block
  reduce array, true do |res, e|
    block.call(e) ? true : (break false)
  end
end
