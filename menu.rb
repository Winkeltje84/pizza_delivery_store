#menu class to be used by pizza_delivery.rb

require_relative = "pizza"

class Menu
  attr_accessor :pizzas

  #an ARRAY of pizzas is created and 6 pizzas are added with the attributes
  # => mentioned in the pizza.rb class
  def initialize
    @pizzas = []
    @pizzas << Pizza.new(101, "Verdure", "Homemade grilled vegetables and fresh mushrooms on tomato sauce and mozzarella.", 9)
    @pizzas << Pizza.new(102, "Margherita", "Homemade tomato sauce and mozzarella.", 8)
    @pizzas << Pizza.new(103, "Tonno", "Tuna and red onions on homemade tomato sauce and mozzarella.", 11)
    @pizzas << Pizza.new(104, "Diavolo", "Spicy salsicca sausage, fresh bell pepper and red onions on homemade tomato sauce and mozzarella.", 8)
    @pizzas << Pizza.new(105, "Calzone", "Spicy salsicca sausage, Italian ham and fresh mushrooms on homemade tomato sauce and mozzarella.", 9)
    @pizzas << Pizza.new(106, "Americana", "Spicy pepperoni salami and tangy salsiccia sausage on homemade tomato sauce with mozzarella.", 9)
  end

  #method to PRINT the MENU
  def print_menu
    puts "See what awesome pizza's we have!\n"

    #each loop goes over every pizza in @pizzas ARRAY
    # => and puts the details of every 'pizza' on one line
    # => it gets these details because the pizzas have been initialized
    # => with data from the pizza.rb class
    @pizzas.each do |pizza|
      puts "#{pizza.number}: #{pizza.name} - #{pizza.ingredients}"
    end
  end
end
