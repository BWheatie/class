# If it's divisible by 5 print Fizz.
# If it's divisible by 3 print Buzz.
# If it's divisible by 15, print FizzBuzz.
# Otherwise, print the number.

def divisible_by? i, d
  i % d == 0
end

def fizzbuzz(i)
  if divisible_by? i, 15
    puts "FizzBuzz"
  elsif divisible_by? i, 5
    puts "Fizz"
  elsif divisible_by? i, 3
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
