# Image.create!([
#   {url: "https://static1.squarespace.com/static/55d7cc3ae4b039657c2b8564/t/57c478ebbe6594a834526e3e/1458790049387/Poster_2_300dpi_03-29-15P.jpg?format=2500w", product_id: 1},
#   {url: "https://www.thefirearmblog.com/blog/wp-content/uploads/2016/06/ULC-PRO2-660x440.jpg", product_id: 2},
#   {url: "https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6021/6021700cv11d.jpg", product_id: 3}
# ])
# Order.create!([
#   {user_id: 2, product_id: 2, quantity: 2, subtotal: "6400.0", tax: "576.0", total: "6976.0"},
#   {user_id: 2, product_id: 2, quantity: 2, subtotal: "6400.0", tax: "576.0", total: "6976.0"},
#   {user_id: 2, product_id: 2, quantity: 2, subtotal: "6400.0", tax: "576.0", total: "6976.0"},
#   {user_id: 2, product_id: 2, quantity: 2, subtotal: "6400.0", tax: "576.0", total: "6976.0"},
#   {user_id: 2, product_id: 2, quantity: 2, subtotal: "6400.0", tax: "576.0", total: "6976.0"},
#   {user_id: 2, product_id: 3, quantity: 2, subtotal: "1800.0", tax: "162.0", total: "1962.0"}
# ])
# Product.create!([
#   {name: "Anderson Guitar", price: "2500.0", description: "Guitar of the Gods", in_stock: true, supplier_id: 2},
#   {name: "1911", price: "3200.0", description: "Wilson Combat Gold", in_stock: true, supplier_id: 2},
#   {name: "Galaxy Note 8", price: "900.0", description: "The only phone I respect", in_stock: true, supplier_id: 3},
#   {name: "rubber Axe", price: "42.0", description: "all work and no play makes jack go crazy", in_stock: true, supplier_id: 3}
# ])
# Supplier.create!([
#   {name: "Chuck's", email: "chucks@gmail.com", phone_number: "312-560-0676"},
#   {name: "Rusty Shacklefert", email: "notrustyshacklefert@gmail.com", phone_number: "773-555-5151"},
#   {name: "Susie Crabgrass", email: "hotgrass@hotmail.com", phone_number: "630-555-1212"}
# ])
# User.create!([
#   {name: "Jet", email: "jetmag@gmail.com", password_digest: "$2a$10$bzHDOt8JOHzaPp5Bx38oreNg.juWwTzfHhLT6Py8ytMsCZCf2CWni", admin: false},
#   {name: "Jack Snake", email: "jackthesnake@gmail.com", password_digest: "$2a$10$Ica37kCHYnV.3tLeALauDuZwuFAFihRZv7jKITxLsxL4d2nWDGIb6", admin: false},
#   {name: "Mike", email: "mike@gmail.com", password_digest: "$2a$10$XbGfYYPquIpa8RNdY6b62Oh4r./hRhf2ez5OpNaTlO68m7k/diRdC", admin: true}
# ])

Category.create(name: "Expensive")

ProductCategory.create(product_id: 2, catergoy_id: 1)