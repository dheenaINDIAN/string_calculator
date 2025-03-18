require_relative './lib/string_calculator'

calculator = StringCalculator.new

print "Enter comma-separated numbers: "
input = gets.chomp

result = calculator.add(input)
puts "Sum: #{result}"

