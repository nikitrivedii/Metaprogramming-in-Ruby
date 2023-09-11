class Sum
end

Sum.class_eval do
  def calculate(num1, num2)
    puts "Sum = #{num1 + num2}"
  end
end

Sum.new.calculate(5,10)
# Output: Sum = 15