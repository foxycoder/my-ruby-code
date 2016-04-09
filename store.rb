@total_price = 0.0
@cart = "Your cart holds:\n\n"
@hamsters = 1

def show_inventory
  puts "
  Here's our Inventory:

  1) Cats
  2) Dogs
  3) **The last Hamster!**

  Make your choice [1-3]:
  "
  choice = gets.chomp.to_i
  puts "You chose: #{choice}"

  if choice == 1
    @cart << "1 Cat\n"
    @total_price += 50.00
  elsif choice == 2
    @cart << "1 Dog\n"
    @total_price += 220.50
  elsif choice == 3
    if @hamsters > 0
      @cart << "1 Hamster\n"
      @hamsters -= 1
      @total_price += 2.50
    else
      puts "Fresh out of hamsters, sorry!"
    end
  else
    puts "That's not available!"
  end

  puts "
  #{@cart}

  Would you like to buy more?
  1) Yes
  2) No
  "
  more = gets.chomp.to_i

  if more == 2
    pay!
    puts "Thank you. Bye!"
  else
    show_inventory
  end
end

def pay!
  puts @cart
  puts "You need to pay €#{@total_price} first. Fill in the amount to pay:"
  paid = gets.chomp.to_f
  @total_price -= paid

  if @total_price > 0
    pay!
  elsif @total_price < 0
    puts "Here's €#{-@total_price} in change."
  end
end

show_inventory
