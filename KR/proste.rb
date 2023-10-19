def proste(number)
  return false if number <= 1
  return true if number <= 3

  return false if (number % 2 == 0) || (number % 3 == 0)

  i = 5
  while i * i <= number
    return false if (number % i == 0) || (number % (i + 2) == 0)
    i += 6
  end

  return true
end

print "Введіть число: "
num = gets.to_i

if proste(num)
  puts "#{num} є простим числом."
else
  puts "#{num} не є простим числом."
end
