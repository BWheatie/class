class Map
  def initialize
    @contents = []
  end

  def set key, value
    somewhere = @contents.find_index { |c| c[0] == key}
    if somewhere
      @contents[somewhere] = [key, value]
    else
      @contents << [key, value]
    end
  end

  def get key
    somewhere = @contents.find_index { |c| c[0] == key}
    if somewhere
      @contents[somewhere][1]
    else
      nil
    end
  end
end

map = Map.new
map.set(:a, 989879)
map.set(:a, 97)
map.set(:b, 98)

puts map.get(:a)
puts map.get(:b)
