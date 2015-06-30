def upcase str
  upper = ""
  str.each_char do |c|
    if c.ord <= 122 && c.ord >= 97
      upper << (c.ord - 32).chr
    else
      upper << c
    end
  end
  upper
end

def downcase str
  down = ""
  str.each_char do |c|
    if c.ord <= 90 && c.ord >= 65
      down << (c.ord + 32).chr
    else
      down << c
    end
  end
  down 
end

def swapcase str
  swap = ""
  str.each_char do |c|
    if c.ord <= 122 && c.ord >= 97
      swap << (c.ord - 32).chr
    elsif c.ord <= 90 && c.ord >= 65
      swap << (c.ord + 32).chr
    else 
      swap << c
    end
  end
  swap
end
