def counting_sort(array)
  max_value = array.max
  min_value = array.min
  range = max_value - min_value + 1

  # Створення масиву для підрахунку кількості елементів
  count = Array.new(range, 0)

  # Підрахунок кількості кожного елемента в масиві
  array.each { |element| count[element - min_value] += 1 }

  # Побудова відсортованого масиву на основі підрахунку
  sorted_array = []
  count.each_with_index do |count, i|
    count.times { sorted_array << i + min_value }
  end

  return sorted_array
end

# Приклад використання
unsorted_array = [4, 2, 8, 3, 1, 7, 5, 6]
sorted_array = counting_sort(unsorted_array)

puts "Не відсортований масив: #{unsorted_array}"
puts "Відсортований масив: #{sorted_array}"
