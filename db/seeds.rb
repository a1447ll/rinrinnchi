# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: 'Rinrin', email: 'masusapu@gmail.com', admin: true)
Category.create(name: "Origami")
Category.create(name: "Needle felting")
Item.create(name: "Bookmark", image: "http://www.inkprint.in/media/catalog/product/cache/1/image/265x/9df78eab33525d08d6e5fb8d27136e95/b/o/bookmark.jpg", description: "A paper bookmark", price: 1.0, category_id: 1)
Item.create(name: "Kitten", image: "https://s-media-cache-ak0.pinimg.com/236x/e1/59/f7/e159f77dfbc64623ac74187491e50b46.jpg", description: "A felted kitten", price: 10.0, category_id: 2)