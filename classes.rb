class Product
  attr_reader :name


  def initialize(name, reference_number)
    @name = name
    @reference_number = reference_number
  end
end

class Catalogue
  def initialize
    @list = []
  end

  def print_list
    @list.each_with_index do |product, index|
      puts "#{index + 1}. #{product.name}"
    end
  end

  def add_product(product)
    @list << product
  end
end

catalogue = Catalogue.new

banana = Product.new("banana")
strawberry = Product.new("strawberry")
pineapple = Product.new("pineapple")

catalogue.add_product banana
catalogue.add_product strawberry
catalogue.add_product pineapple

catalogue.print_list
