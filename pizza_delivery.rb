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

done = false

puts "Hello welcome to Bas' pizza Winkel!"

#below while-loop will run untill variable 'done' == true
while not done
  puts "What can I do for you?"
  puts "1: Order a pizza"
  puts "2: Nothing"
  puts "-" * 30

  #gets choice from user
  choice = gets.chomp.to_i
  case choice
  when 1
    puts "Let me show you the menu"
  when 2
    done = true
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
