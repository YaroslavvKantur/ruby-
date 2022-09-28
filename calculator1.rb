puts "Enter the number"
num1= STDIN.gets.chomp.to_i
puts "Enter operator ( '+' '-' '*' /' ) "
op= STDIN.gets.chomp
puts "Enter the second number"
num2= STDIN.gets.chomp.to_i
case op
when "+"
  puts num1+num2
when "-"
  puts num1-num2
when "*"
  puts num1*num2
when "/"
  begin
    puts num1/num2
  rescue ZeroDivisionError
    puts "Impossible to divide by zero"
  end
else
  puts "Invalid operator"
end