require "open-uri"

Product.destroy_all

User.destroy_all
User.create(email: "ignacio@gmail.com", first_name: "Ignacio", last_name: "Borrell", password: "123456")

movies = [
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  },
  {
    title: "Ocean's Eight",
    description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
    price_per_day: 14.99,
    condition: "Acceptable",
    image_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg"
  }

]

movies.each do |movie|
  file = URI.open(movie[:image_url])

  product = Product.new(
    title: movie[:title],
    description: movie[:description],
    price_per_day: movie[:price_per_day],
    condition: movie[:condition],
    user: User.last
  )
  product.image.attach(io: file, filename: "#{movie[:title].parameterize.underscore}.jpg", content_type: "image/jpg")
  product.save
end
