def local_max array
  array.each_cons(3).select { |a, b, c| a < b and b > c }.map { |x| x.max }
end
