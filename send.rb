class User
  attr_accessor :name, :age
end
user_attrs = { name: "Bob", age: 29}
user = User.new

user_attrs.each do |attr_name, attr_value|
  user.send("#{attr_name}=", attr_value)
end

puts user.name # Output : "Bob"
puts user.age # Output : 29