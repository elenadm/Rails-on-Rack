def fibonacci_numbers_v1(n)
  f1 = 0
  f2 = 1
  k = 0
  while n != k
    variable = f1 + f2
    f1 = f2
    f2 = variable
    k += 1
  end
  f1
end
