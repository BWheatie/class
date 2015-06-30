#-----------------------------------
#| Name |  Favorite Food  |  Grade |
#===================================
#| Ryan |  stuff          |   0    |
#| Ben  |  meat           |   99   |
#| Luke |  ????           |   -5   |
#===================================
#| Grade | 30                      |
#-----------------------------------
data = {}
data[:ryan] = {:food => "stuff", grade: 0}
data[:ben]  = {:food => "meat", grade: 99}
data[:luke] = {food: "???", grade: -5}
sum = 0
data.each { |name, value| sum += value[:grade] }
average = sum / data.length

def horizontal_line len
  str = ""
  len.times { str << "-" }
  str
end

def double_line len
  str = ""
  len.times { str << "=" }
  str
end
def header *titles
  "| #{ titles.join(" | ")} |"
end
def pretty_data name, value, len
  base = "| #{name} | #{value[:food]} | #{value[:grade] }"
  base << " " while base.length < len - 1
  base << "|"
end

hdr = header "Name", "Favorite Food", "Grade"
puts horizontal_line(hdr.length)
puts hdr
puts double_line(hdr.length)
data.each do |name, value|
  puts pretty_data(name, value, hdr.length)
end
puts double_line(hdr.length)
puts header "Grade", average
puts horizontal_line(hdr.length)
