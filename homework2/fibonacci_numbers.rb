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

def fibonacci_numbers_v2(n)
  return 0 if n == 0
  require 'matrix'
  a = Matrix[[1, 1], [1, 0]]
  k = n/2
  res = a**k * a**k
  n % 2 == 0 ? res : res *= a
  res[0, 1]
end
