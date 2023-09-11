class Square
  def method_missing(method_name, *args)
    puts "Sum = #{args[0] + args[1]}"
  end
end
  
Square.new.calculate(5, 10)
# Output: Sum = 15