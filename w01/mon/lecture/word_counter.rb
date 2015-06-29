file = File.new("warandpeace")
words = 0
file.each_line do |line|
  words += line.split(' ').length
end
out = File.open("out", 'w')
out.write(words)
