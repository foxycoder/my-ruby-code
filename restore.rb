# Welcome message
def welcome
  puts "Welcome to my store!"
end

# Show inventory
def show_inventory
  puts "A. Strawberries"
  puts "B. Bananas"
end

# Pick a product from the inventory
def pick_product
  print "Pick a product: "
  choice = gets.chomp.downcase

  puts "You typed: #{choice}"

  # Add picked product to the cart
  if choice == "a"
    product = "Strawberries"
  elsif choice == "b"
    product = "Bananas"
  else
    product = "nothing"
  end

  puts "You chose: #{product}!"

  return product
end

# Choose: Back to Pick product or continue to Checkout

# Checkout (pay)
def checkout(product)
  price = 0.00

  if product == "Strawberries"
    price = 4.00
  elsif product == "Bananas"
    price = 2.30
  end

  puts "You need to pay: €#{price}"
end

# Say Goodbye
def goodbye
  puts "Goodbye!"
end

welcome
show_inventory
product = pick_product
checkout(product)
goodbye
