def reverse array
  i = array.length-1
  result = Array.new
  i.downto(0) { |i| result << array[i] }
  result
end
