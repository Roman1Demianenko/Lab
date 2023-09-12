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
