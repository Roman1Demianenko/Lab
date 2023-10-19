def factorial(n)
  if n == 0
    return 1
  else
    return n * factorial(n - 1)
  end
end

print "Введіть число: "
num = gets.chomp.to_i

if num < 0
  puts "Факторіал визначений лише для не від'ємних цілих чисел."
else
  result = factorial(num)
  puts "Факторіал числа #{num} дорівнює #{result}"
end
