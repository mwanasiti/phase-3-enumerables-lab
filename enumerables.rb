require 'pry'


def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end


def get_names(spicy_foods)
  spicy_foods.collect {|food| food[:name]}
end


def spiciest_foods(spicy_foods)
  spicy_foods.select do |food| 
    food[:heat_level] > 5
  end
end


def print_spicy_foods(spicy_foods)
  spicy_foods.each do |food|
    the_spice = "🌶" * food[:heat_level]
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{the_spice}"
  end
end


def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_foods.find do |food|
    food[:cuisine] == cuisine
  end
end


def sort_by_heat(spicy_foods)
  spicy_foods.sort_by do |food|
    food[:heat_level]
  end
end


def print_spiciest_foods(spicy_foods)
  print_spicy_foods(spiciest_foods(spicy_foods))
end


def average_heat_level(spicy_foods)
  the_heat = spicy_foods.collect do |food|
    food[:heat_level]
  end
  the_heat.sum / spicy_foods.length
end