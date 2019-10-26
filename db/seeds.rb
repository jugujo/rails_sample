# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |i|
    # Board.create(user_id:1, content: "hi #{i}")
    #Category.create(name:"hi #{i}", content: "hi #{i}")
end

Category.create(name:"Sqare", description: "This is a sqare")
Category.create(name:"Circle", description: "This is a circle")
Category.create(name:"Triangle", description: "This is a triangle")