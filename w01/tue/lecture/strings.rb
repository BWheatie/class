def upcase str
  upper = ""
  str.each_char do |c|
    if c.ord < 122 && c.ord >= 97
     upper << (c.ord - 32).chr
    else
      upper << c
    end
  end
  upper
end

#puts upcase "stuff"
