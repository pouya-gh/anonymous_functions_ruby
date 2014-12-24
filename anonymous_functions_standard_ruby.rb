def print_if_true(numbers)
  numbers.each do |number|
    if yield(number)
      puts number
    end
  end
end

numbers = [1,2,4,5,15,66,88,9,99]

print_if_true(numbers) do |num|
  num.odd?
end