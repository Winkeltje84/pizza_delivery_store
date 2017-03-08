#class order.rb

# => 'pizza.rb' is required because the pizza details are needed
require_relative "pizza.rb"

class Order
  attr_accessor :content

  def initialize
    @content = [] # => default set to empty array
  end

  def add_pizza(user_choice)
    @content << user_choice
  end

  # => method that gets the value of the order
  # => The Array.reduce method is used to get a single value
  # => out of the pizzas in the order.
  def value_order
    @content.reduce(0) { |sum, pizza| sum + pizza.price }
  end

end
