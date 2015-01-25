def sum_2_max_square_v1(a, b, c)
  if a < b
    x = a; a = b; b = x
  end
  if a < c
    x = a; a = c; c = x
  end
  if b < c
    x = b; b = c; c = x
  end
  a**2 + b**2
end

def sum_2_max_square_v2(a, b, c)
  array = Array.new
  array << a << b << c
  i = 0
  l = array.length
  while i < l
    j = i + 1
    while j < l
      if array[i] < array[j]
        variable = array[i]
        array[i] = array[j]
        array[j] = variable
      end
      j += 1
    end
    i += 1
  end
  array[0].to_i**2 + array[1].to_i**2
end

def sum_2_max_square_v3(a, b, c)
  array = Array.new
  array << a << b << c
  a = array.sort
  a[-1] * a[-1] + a[-2] * a[-2]
end
