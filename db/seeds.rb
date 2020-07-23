# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# need to add watering_frequency to this when i work out how

puts "we are fetching you some plants 🌱"

# d1 = Date.new(2015,22,06)
# d2 = Date.new(2020,11,06)

10.times do |plant|
    Plant.create!(
        title: "My plant number #{plant}",
        main_image: "https://via.placeholder.com/600x400",
        thumb_image: "https://via.placeholder.com/350x200", 
        lighting_preference: "sunny spot",
    )
end

puts "you now have five beautiful plant friends in your database 🌳"