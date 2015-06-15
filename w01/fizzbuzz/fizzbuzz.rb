# If it's divisible by 5 print Fizz.
# If it's divisible by 3 print Buzz.
# If it's divisible by 15, print FizzBuzz.
# Otherwise, print the number.

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
  x += 'Fizz' if i % 5 == 0
  x += 'Buzz' if i % 3 == 0
  puts (x.empty? ? i : x)
end

# fizzbuzz(100)
fancy_fizzbuzz(15)
