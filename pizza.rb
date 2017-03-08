#pizza class to be used by pizza_delivery.rb

#require_relative = "pizza_delivery" # => IS NOT NECCESSARY

class Pizza
  attr_accessor :number, :name, :ingredients, :price

  def initialize(number, name, ingredients, price)
    @number = number
    @name = name
    @ingredients = ingredients
    @price = price
  end

end
