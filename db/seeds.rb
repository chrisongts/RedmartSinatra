# require './models/user'
# require 'faker'
# require 'Faker'

# (0..10).each do |i|
#   User.create(name: "Name #{i}", email: "Email #{i}")
# end

# (0..10).each do |i|
#     User.create(
#       name: Faker::Name.name,
#       email: Faker::Internet.email,
#       address: Faker::Address.street_address
#     )
# end

require './models/product'

Product.create(name: "Kee Song Fresh Boneless Chicken Breasts",
               brand_id: "Kee Song",
               category_id: "Meat - Chicken",
               price: 6.60)
Product.create(name: "Scott Virgin Fiber Towels",
              brand_id: "Scott",
              category_id: "MCK0001",
              price: 4.95)
Product.create(name: "Hoegaarden Belgian White Beer Can",
               brand_id: "Hoegaarden",
               category_id: "BHG0001",
               price: 6.60)
Product.create(name: "Owl 3-in-1 Strong Instant Coffee",
              brand_id: "Owl",
              category_id: "OC30001",
              price: 6.50)
Product.create(name: "Sunshine Softgrain Wholemeal Bread",
              brand_id: "Sunshine",
              category_id: "SBW0001",
              price: 2.60)
Product.create(name: "Marigold Low Fat Cup Yoghurt - Natural",
              brand_id: "Marigold",
              category_id: "MYL0001",
              price: 2.60)
Product.create(name: "Haagen-Dazs Macadamia Nut Ice Cream",
              brand_id: "Haagen-Dazs",
              category_id: "HDI0001",
              price: 14.45)
            
