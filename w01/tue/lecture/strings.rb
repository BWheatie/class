def upcase str
  upper = ""
  str.each_char do |c|
    upper << (c.ord - 32).chr
  end
  upper
end

#puts upcase "stuff"
