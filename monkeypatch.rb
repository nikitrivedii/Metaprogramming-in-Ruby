class Greeting
  def say_hello(name)
    "Hello, #{name}"
  end
end

greeting = Greeting.new
puts greeting.say_hello('Team') # Output: "Hello, Team"

class Greeting
  def say_hello(name)
    "Hi there, #{name}"
  end
end

puts greeting.say_hello('Team')  # Output: "Hi there, Team"
