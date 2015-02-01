=begin
def euler(num)
  (0...num).reduce {|sum, n| ( n % 3 == 0 || n % 5 == 0)? sum + n : sum }
end
=end

def euler(num)
  (1...num).select { |e| e % 3 == 0 || e % 5 == 0 }.reduce(:+) || 0
end
