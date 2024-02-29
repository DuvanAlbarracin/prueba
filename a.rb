a = gets
b = gets

aa = a.split
bb = b.split

aaa = []
aa.each do |x|
  aaa.append(x.to_i)
end

bbb = []
bb.each do |x|
  bbb.append(x.to_i)
end

dist = Math.sqrt((bbb[0] - aaa[0])**2 + (bbb[1] - aaa[0])**2)
dist1 = bbb[2]**2 + aaa[2]
 
if dist < dist1
  puts "SI"
else
  puts "NO"
end
