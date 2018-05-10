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
        @dish.each do |order|
          
            puts "Your order is: #{order.name}, #{order.price}"
        end
        puts "Your total is: #{total}"
    end
end

Lunchlady.new









# This is nothing:






#class Lunchlady
#  attr_accessor :main_dish

#  def initialize(main_dish, side_dish)
#    @main_dish = main_dish
#    @side_dish = side_dish
#    display
#  end

#  def display
#    puts "the main dish is #{@main_dish} and the side dish is #{@side_dish}."
#  end

#end

#x = gets.strip
#y = gets.strip
#md1 = Lunchlady.new(x, y)

# def order
#     puts "Your order consists of:"
#     puts "#{@food}, #{@input1} and #{@input2}"
#     puts "Is that correct? (Y/N)"
#     print "> "
#     correct = gets.strip.downcase
#     if correct == "y"
#         puts "Your total is: "
#     else
#         puts "Let's try that again"
#         main_menu
#     end
# end

# def side_dish_menu
#     puts "1) Baked Beans"
#     puts "2) Broccoli"
#     puts "3) Creamed Corn"
#     puts "Please pick a side dish"
#     print "> "
#     @input1 = gets.strip.downcase
#     input1.to_i
#     puts "Please pick another side dish"
#     input2 = gets.strip.to_i
#     order
# end

# def main_menu
#   puts "======== Lunch Menu ========"
#   puts "1) Corned Beef"
#   puts "2) Veggie Lasagna"
#   puts "3) Sloppy Joe"
#   puts "Please choose one main dish"
#   print "> "
#   @choice = gets.strip.to_i
#     case @choice
#     when 1
#         @food = "Corned Beef"
#         side_dish_menu
#     when 2
#         @food = "Veggie Lasagna"
#         side_dish_menu
#     when 3
#         @food = "Sloppy Joe"
#         side_dish_menu
#     else
#         puts "please pick a valid option."
    
#     end
# end

# main_menu
