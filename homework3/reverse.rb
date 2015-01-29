def reverse array
  i = (array.length)-1
  result = Array.new
  while i>=0
    result << array[i]
    i-=1
  end
  result
end
