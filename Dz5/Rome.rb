def rome_to_int(rome)
  rome_dict = {
    'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50,
    'C' => 100, 'D' => 500, 'M' => 1000
  }

  result = 0
  prev_value = 0

  rome.reverse.each_char do |char|
    value = rome_dict[char]
    if value < prev_value
      result -= value
    else
      result += value
    end
    prev_value = value
  end

  result
end

def int_to_rome(n)
  rome_numerals = {
    1 => 'I', 4 => 'IV', 5 => 'V', 9 => 'IX', 10 => 'X',
    40 => 'XL', 50 => 'L', 90 => 'XC', 100 => 'C',
    400 => 'CD', 500 => 'D', 900 => 'CM', 1000 => 'M'
  }

  result = ''

  rome_numerals.keys.sort.reverse.each do |value|
    while n >= value
      result += rome_numerals[value]
      n -= value
    end
  end

  result
end

loop do
  print 'Введіть ціле число від 1 до 4000: '
  input = gets.chomp


  n = input.to_i

  if (1...4000).include?(n)
    rome = int_to_rome(n)
    puts "Римське числове представлення числа #{n}: #{rome}"
  else
    puts 'Будь ласка, введіть число в діапазоні від 1 до 3999'
  end
end