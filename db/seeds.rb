# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts '🍕Seeding...'

# Restaurant 

5.times do
    Restaurant.create!(
        name: Faker::Restaurant.name,
        address: Faker::Address.street_address,
    )
end

# Pizza

Pizza.create!(
    [
        {name: "Neopolitan Pizza", ingredients:"tomato sauce, mozzarella cheese, basil"},
        {name: "Chicago Pizza", ingredients:"sausage, pepperoni, onion, mushrooms,green peppers"},
        {name: "New York Pizza", ingredients:"pepperoni, parmesan cheese,mushroom,anchovies, oregano, red pepper, garlic"},
        {name: "Sicilian Pizza", ingredients:" tomato, onion, anchovies, herbs"},
        {name: "Greek Pizza", ingredients:"tomato sauce, cheddar cheese, feta cheese, black olives, red onion"},
        {name: "California Pizza", ingredients:"artichoke, goat cheese, mustard,ricotta cheese, pate, red peppers"},
        {name: "Detroit Pizza", ingredients:"pepperoni, brick cheese, mushrooms, olive"},
        {name: "St. Louis Pizza", ingredients:"cheddar cheese,swiss cheese, tomato sauce, oregano"},
    ]
)

# RestaurantPizza
# Assign a random pizza to a random restaurant 20 time 
# a restaurant can have multiple pizza, but not the same pizza twice
# a pizza can be in multiple restaurant, but not the same restaurant twice
# assign a price between 1 and 30 with 2 decimals

20.times do
    RestaurantPizza.create!(
        price: rand(1.00..30.00).round(2),
        pizza_id: Pizza.all[rand(0..Pizza.all.length-1)].id,
        restaurant_id: Restaurant.all[rand(0..Restaurant.all.length-1)].id

    )
end

puts 'Done!🍕'
