# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
 Product.create!  name: 'art1', price: 10.00, description: 'The true work of art is but a shadow of the divine perfection.Michelangelo', image_url: 'http://julietbrowncreative.weebly.com/uploads/3/1/6/3/31635653/8021899_orig.jpg'
 Product.create!  name: 'art2', price: 420.00, description: 'Drawing is the honesty of the art. There is no possibility of cheating. It is either good or bad.Salvador Dali', image_url: 'http://julietbrowncreative.weebly.com/uploads/3/1/6/3/31635653/233595_orig.jpg'
 Product.create!  name: 'art3', price: 20.00, description: 'Painting is just another way of keeping a diary.Pablo Picasso', image_url: 'http://julietbrowncreative.weebly.com/uploads/3/1/6/3/31635653/1529816_orig.jpg'
 Product.create!  name: 'art4', price: 15.00, description: '“The job of the artist is always to deepen the mystery.”  Francis Bacon ', image_url: 'http://julietbrowncreative.weebly.com/uploads/3/1/6/3/31635653/8021899_orig.jpg'
#   {id: 5,name: 'art5', price: 10.00, description: 'The true work of art is but a shadow of the divine perfection.Michelangelo', image_url: 'http://julietbrowncreative.weebly.com/uploads/3/1/6/3/31635653/8021899_orig.jpg', active: true},
#   {id: 6,name: 'art6', price: 420.00, description: 'Drawing is the honesty of the art. There is no possibility of cheating. It is either good or bad.Salvador Dali', image_url: 'http://julietbrowncreative.weebly.com/uploads/3/1/6/3/31635653/7893842_orig.jpg', active: true},
#   {id: 7,name: 'art7', price: 20.00, description: 'Painting is just another way of keeping a diary.Pablo Picasso', image_url: 'http://julietbrowncreative.weebly.com/uploads/3/1/6/3/31635653/1589619_orig.jpg', active: true},
#   {id: 8,name: 'art8', price: 15.00, description: '“The job of the artist is always to deepen the mystery.”  Francis Bacon ', image_url: 'http://julietbrowncreative.weebly.com/uploads/3/1/6/3/31635653/7416243_orig.jpg', active: true},
# ]

# products.each do |product|
#   Product.create!(product)
# end
