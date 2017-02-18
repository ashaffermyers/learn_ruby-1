#write your code here
def add(a,b)
  a + b

end

def subtract(a,b)
 a - b
end

def sum(a)
  b = 0
  a.each do |c|

    b = b + c

  end
  b
end

def multiply(a, b)
  a * b
end

def multiply_elements(a)
  b = 1
  a.each do |c|
    b = b * c
  end
  b
end

def power(a, b)
  i = 1
  a1 = a
  while i <= b do
    a = a1 * a
  end
  a
end
