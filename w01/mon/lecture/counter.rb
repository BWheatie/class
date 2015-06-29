puts "Hello World"
count = nil
while count.nil? do
  puts "How many things do you want?"
  begin
    count = Integer(gets.chomp)
  rescue ArgumentError
    count = nil
  end
end
puts "What do you want to count by?"
begin
  gait = Integer(gets.chomp)
rescue ArgumentError
  gait = 1
end
puts
out = []
1.upto(count).each do |i|
  if i % gait == 0
    out << i
  end
end
puts out.join(',')
