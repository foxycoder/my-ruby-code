products = {
  1 => "banana",
  2 => "strawberry",
  3 => "pineapple"
}

def product_line(index, product_name)
  puts "#{index}. #{product_name}"
end

products.each do |index, product|
  product_line(index, product)
end
