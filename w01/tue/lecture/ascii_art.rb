#-----------------------------------
#| Name |  Favorite Food  |  Grade |
#===================================
#| Ryan |  stuff          |   F    |
#| Ben  |  meat           |   A-   |
#| Luke |  ????           |   Z    |
#-----------------------------------

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
data = {}
data[:ryan] = {food: "stuff", grade: 0}
data[:ben]  = {food: "meat", grade: 99}
data[:luke] = {food: "???", grade: -5}

hdr = header "Name", "Favorite Food", "Grade"
puts horizontal_line(hdr.length)
puts hdr
puts double_line(hdr.length)
data.each do |name, value|
  puts pretty_data(name, value, hdr.length)
end
puts horizontal_line(hdr.length)
