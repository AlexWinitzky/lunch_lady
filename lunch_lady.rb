require 'pry'

class Dish
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end


class Lunchlady
  def initialize
    @dish = []
    order
  end

  def calc
    @total = @dish.map(&:price).inject(:+)
  end

  def order
    main_menu
    side_menu1
    side_menu2
    calc
    show
  end

  def side_menu2
    puts "Pick another side"
    z = gets.strip
    case z
      when '1'
        @dish << Dish.new('Green Beans', 5.00)
      when '2'
        @dish << Dish.new('Creamed Corn', 5.00)
      when '3'
        @dish << Dish.new('Broccoli', 5.00)
      else
        side_menu2
      end
    end

  def side_menu1
    puts "1) Green Beans\n2) Creamed Corn\n3) Broccoli"
    y = gets.strip
    case y
      when '1'
        @dish << Dish.new('Green Beans', 5.00)
      when '2'
        @dish << Dish.new('Creamed Corn', 5.00)
      when '3'
        @dish << Dish.new('Broccoli', 5.00)
      else
        side_menu1
      end
  end
    
  def main_menu
    puts "1) Meatloaf\n2) Sloppy Joe\n3) Lasagna"
    x = gets.strip
    case x
      when '1'
        @dish << Dish.new('Meatloaf', 5.00)
      when '2'
        @dish << Dish.new('Sloppy Joe', 6.00)
      when '3'
        @dish << Dish.new('Lasagna', 7.00)
      else
        menu
      end
  end

  def show
    total = @total
    puts "Your order is:"
    @dish.each do |order|
      puts "#{order.name}, #{order.price}"
    end
      puts "Your total is: #{total}"
  end
end

Lunchlady.new
