def print_evens(numbers)
  for number in numbers
    if (number % 2) == 0
      puts number
    end
  end
end

def print_odds(numbers)
  for number in numbers
    if (number % 2) != 0
      puts number
    end
  end
end

def print_if_true(numbers, check_valid)
  for number in numbers
    if check_valid.call(number)
      puts number
    end
  end
end

check_odd = lambda do |number|
  return ((number % 2) != 0)
end

numbers = [1,2,3,5,7,54,22]

puts "odds:"
print_if_true(numbers, check_odd)
