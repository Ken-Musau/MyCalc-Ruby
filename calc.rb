
puts "Welcome to MyCalc V-0.1"
puts "-----------------------"

def get_valid_operation(prompt)
    print prompt
    input = gets.chomp.downcase
    while !["add", "subtract", "multiply", "divide", "exit"].include?(input)
      puts "Invalid operation. Please enter a valid operation or 'exit' to quit."
      print prompt
      input = gets.chomp.downcase
    end
    input
end

def get_valid_number(prompt)
    print prompt
    input = gets.chomp
    while !input.match(/^\d+(\.\d+)?$/)
      puts "Invalid input. Please enter a valid number."
      print prompt
      input = gets.chomp
    end
    input.to_i
end



def calculator(num1, num2, operation)
  case operation
  when "add"
    num1 + num2
  when "subtract"
    num1 - num2
  when "multiply"
    num1 * num2
  when "divide"
    num1 / num2
  else
    puts "Invalid operation"
  end
end


loop do
    operation = get_valid_operation("Which operation would you like to perform? (add/subtract/multiply/divide/exit): ")
  
    break if operation == "exit"
  
    num1 = get_valid_number("Enter the first number: ")
    num2 = get_valid_number("Enter the second number: ")
  
    result = calculator(num1, num2, operation)
    puts "Result: #{result}"
end
  
  puts "Thank you for using MyCalc!"