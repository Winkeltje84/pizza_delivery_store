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

end
