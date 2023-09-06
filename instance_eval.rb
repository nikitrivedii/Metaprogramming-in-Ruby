class Sum
end

sum = Sum.new

sum.instance_eval do
  def calculate(num1, num2)
    puts "Sum = #{num1 * num2}"
  end
end

sum.calculate(5, 10)
# Output: Sum = 15