module B
  p 'qwerty'
end

class A
  include B
  @x = 3
  @@v = 4

  def meth1
    p 'self1'
    #@x = 2
    p @x #nil
    p @@v #4
  end

  def initialize ()
  end

  def self.meth2
    p 'self2'
  end

  def method_missing(name)
    p 'No method ' + name.to_s
  end

  p @x
end

A.new.meth1 #"self1"
#A.meth1 #undefined method `meth1' for A:Class (NoMethodError)
A.new.meth2 #"No method meth2"
A.send(:meth2) #"self2"
A.meth2 #"self2"
A.new.meth3 #"No method meth3"

