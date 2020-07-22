# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |plant|
    Plant.create!(
        title: "My plant number #{plant}",
        date_acquired: "March 2029",
        lighting_preference: "sunny spots",
        watering_frequency: "every three weeks",
        last_watered: "three weeks ago"
    )
end

puts "you now have five beautiful plant friends in your database"