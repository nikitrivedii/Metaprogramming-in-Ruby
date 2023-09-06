class Sum
end

Sum.define_method(:calculate) do |num1, num2|
  puts "Sum = #{num1 + num2}"
end

Sum.new.calculate(5, 10)
# Output: Sum = 15