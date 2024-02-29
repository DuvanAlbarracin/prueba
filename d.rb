n = gets
b = n**2
s = b.to_s
x = s.length
last = s[x-1]
if last.to_i == n
  puts "SI"
else
  puts "NO"
end
