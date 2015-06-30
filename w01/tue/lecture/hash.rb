class Map
  def initialize
    @keys = []
    @values = []
  end

  def set key, value
    somewhere = @keys.find_index { |k| k == key}
    if somewhere
      @values[somewhere] = value
    else
      @keys << key
      @values << value
    end
  end

  def get key
    somewhere = @keys.find_index { |k| k == key}
    if somewhere
      @values[somewhere]
    else
      nil
    end
  end
end

map = Map.new
map.set(:a, 97)
map.set(:b, 98)

puts map.get(:a)
puts map.get(:b)
