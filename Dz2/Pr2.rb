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
