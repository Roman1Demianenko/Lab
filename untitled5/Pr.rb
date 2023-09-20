<<<<<<< HEAD
def rpn(expression)
  operators = {'+' => 1, '-' => 1, '*' => 2, '/' => 2}
  output = []
  stack = []

  expression.split.each do |token|
    if token.match?(/\d+/)
      output << token
    elsif token == '('
      stack.push(token)
    elsif token == ')'
      while stack.last != '('
        output << stack.pop
      end
      stack.pop
    else
      while !stack.empty? && operators[token] <= operators[stack.last]
        output << stack.pop
      end
      stack.push(token)
    end
  end

  while !stack.empty?
    output << stack.pop
  end

  return output.join(' ')
end

puts "Введіть математичний вираз у звичному вигляді:"
input_expression = gets.chomp
rpn_expression = rpn(input_expression)
puts "RPN вираз: #{rpn_expression}"
=======
Choice = ["камень", "ножницы", "бумага"]

def get_computer_choice
  Choice.sample
end

def determine_winner(user_choice, computer_choice)
  if user_choice == computer_choice
    "Ничья!"
  elsif (user_choice == "камень" && computer_choice == "ножницы") ||
    (user_choice == "ножницы" && computer_choice == "бумага") ||
    (user_choice == "бумага" && computer_choice == "камень")
    "Вы выиграли! Компьютер выбрал #{computer_choice}."
  else
    "Вы проиграли. Компьютер выбрал #{computer_choice}."
  end
end

def play_game
  puts "Выберите: камень, ножницы или бумагу"
  user_choice = gets.chomp.downcase
  until Choice.include?(user_choice)
  end
  computer_choice = get_computer_choice
  puts determine_winner(user_choice, computer_choice)
end

play_game
>>>>>>> f272c93b85a76384c47101e3d79504934439995d
