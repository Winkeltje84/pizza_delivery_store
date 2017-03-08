=begin

Lab 1 / Pizza Delivery

Pizza Delivery - SUMMARY ASSIGNMENT

The first lab will be about classes and how they can store data.
You will make a pizza delivery service.

It will contain the following classes:
Menu : All the possible options to order
Pizza : A pizza
Order : Contains one or more pizza's

There will also be a main file for the program.

=end

require_relative "menu.rb"
require_relative "pizza.rb"
require_relative "order.rb"

done = false

menu_bas_pizza_winkel = Menu.new
# => PAY ATTENTION: different menu name than exercize
order_customer = Order.new

puts "Hello welcome to Bas' pizza Winkel!"

#below while-loop will run untill variable 'done' == true
while not done
  puts "What can I do for you?"
  puts "1: Order a pizza"
  puts "2: Nothing"
  puts "3: Check out (€ #{order_customer.value_order})" if order_customer.value_order > 0
  puts "-" * 30

  #gets choice from user
  choice = gets.chomp.to_i
  case choice
  when 1
    menu_bas_pizza_winkel.print_menu
    # => PAY ATTENTION: different menu name than exercize
    pizza = menu_bas_pizza_winkel.make_choice
    order = order_customer.add_pizza(pizza)
  when 2
    done = true
  when 3
    order_customer.print
    puts "How do you wish to pay? Please type the option number:"
    puts "1: Ideal"
    puts "2: Creditcard"
    payment = gets.chomp.to_i
    done = ( payment == 1 || payment == 2) # => (payment == 1 || payment == 2) Checks if the value of payment is either 1 or 2. You have to make 2 checks for this.
  else
    puts "I don't understand..."
  end

  #says goodbye if the customer is leaving
  if done
    puts "Thank you for your visit! hope to see you again soon."
    puts "   __"
    puts " // \"\"--.._"
    puts "||  (_)  _ \"-._"
    puts "||    _ (_)    '-."
    puts "||   (_)   __..-'"
    puts " \\__..--\"\""
  end
end
