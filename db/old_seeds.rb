# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


product = Product.new
  # The same style of thing you wrote in the terminal when working of the controller(product) exercise
  # Write the your code in here
  # You can use this to make changes here more easily and quickly 
product.save

# within what ever project your working on ex(micro_app/) type "rake db:seed" to run the program