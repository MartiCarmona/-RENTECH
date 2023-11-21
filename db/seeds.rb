# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require "open-uri"

Product.destroy_all

User.destroy_all
User.create(email: "ignacio@gmail.com", first_name: "Ignacio", last_name: "Borrell", password: "123456")

file1 = URI.open("https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg")

product1 = Product.new(
  title: "Wonder Woman 1984",
  description: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s",
  price_per_day: 9.99,
  condition: "New",
  user: User.last
)
product1.image.attach(io: file1, filename: "wonder_woman.jpg", content_type: "image/jpg")
product1.save

file2 = URI.open("https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg")

product2 = Product.new(
  title: "The Shawshank Redemption",
  description: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison",
  price_per_day: 7.99,
  condition: "As New",
  user: User.last
)
product2.image.attach(io: file2, filename: "shawshank_redemption.jpg", content_type: "image/jpg")
product2.save

file3 = URI.open("https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg")

product3 = Product.new(
  title: "Titanic",
  description: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.",
  price_per_day: 12.99,
  condition: "Good State",
  user: User.last
)
product3.image.attach(io: file3, filename: "titanic.jpg", content_type: "image/jpg")
product3.save

file4 = URI.open("https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg")

product4 = Product.new(
  title: "Ocean's Eight",
  description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
  price_per_day: 14.99,
  condition: "Acceptable",
  user: User.last
)
product4.image.attach(io: file4, filename: "oceans_eight.jpg", content_type: "image/jpg")
product4.save
