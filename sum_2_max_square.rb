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
