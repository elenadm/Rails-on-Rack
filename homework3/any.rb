def reduce array, initial_value
  result = initial_value
  for e in array
    result = yield(result, e)
  end
  result
end

def any? array, &block
  reduce array, false do |res, e|
    block.call(e) ?  (break true) : false
  end
end
