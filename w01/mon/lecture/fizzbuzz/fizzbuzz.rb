# If it's divisible by 5 print Fizz.
# If it's divisible by 3 print Buzz.
# If it's divisible by 15, print FizzBuzz.
# Otherwise, print the number.

# don't ever do this
class Integer
  def divisible_by? i
    self % i == 0
  end
end

def fizzbuzz(i)
  if i % 15 == 0
    puts "FizzBuzz"
  elsif i % 5 == 0
    puts "Fizz"
  elsif i % 3 == 0
    puts "Buzz"
  else
    puts i
  end
end

def fancy_fizzbuzz(i)
  x = ''
  x += 'Fizz' if i.divisible_by? 5
  x += 'Buzz' if i.divisible_by? 3
  puts (x.empty? ? i : x)
end

(1..100).each do |num|
# fizzbuzz(100)
  fancy_fizzbuzz(num)
end
