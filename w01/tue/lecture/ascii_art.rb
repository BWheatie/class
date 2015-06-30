#-----------------------------------
#| Name |  Favorite Food  |  Grade |
#===================================
#| Ryan |  stuff          |   F    |
#| Ben  |  meat           |   A-   |
#| Luke |  ????           |   Z    |
#-----------------------------------

def horizontal_line
  "-"
end
def double_line
  "="
end
def header *titles
  "| #{titles}"
end
def pretty_data name, value
  "| #{name} | #{value}"
end
data = {}
data[:ryan] = {food: "stuff", grade: 0}
data[:ben]  = {food: "meat", grade: 99}
data[:luke] = {food: "???", grade: -5}

puts horizontal_line
puts header "Name", "Favorite Food", "Grade"
puts double_line
data.each do |name, value|
  puts pretty_data(name, value)
end
puts horizontal_line
