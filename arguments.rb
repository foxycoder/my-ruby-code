@total_price = 0.0

def add_to_price(price, quantity = 1)
  @total_price += (price * quantity)
end

price = 5.0
puts "The hamsters are #{price} today! How many do you want?"
amount = gets.chomp.to_i

add_to_price(price, amount)

puts "Adding shipping cost of €15"
add_to_price(15)

puts @total_price
