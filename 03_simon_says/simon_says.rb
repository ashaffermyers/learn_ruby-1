#write your code here
def echo(a)
  a
end

def shout(a)
  a.upcase
end

def repeat(a, b = 2)
    ((a + " ") * b).strip
end

def start_of_word(a, b)
  a[0, b]
end

def first_word(a)
  b = a.split(" ")
  b[0]
end

def titleize(a)
  hsh = {and: "and", or: "or", the: "the", over: "over"}
  b = a.split(" ")
  i = 0
  while i < b.length do
    flagSmallWord = false
    if i != 0 then
      hsh.each do |key, value|
        if b[i] == value then
          flagSmallWord = true
        end
      end
    end

    if not flagSmallWord then
      b[i] = b[i].capitalize
    end
    i += 1
  end
  a = b.join(" ")
  a
end
