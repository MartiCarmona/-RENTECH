require "open-uri"

Product.destroy_all

User.destroy_all
User.create(email: "ignacio@gmail.com", first_name: "Ignacio", last_name: "Borrell", password: "123456")


movies = [
  {
    title: "Wonder Wan 1984",
    description: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s",
    price_per_day: 9.99,
    condition: "New",
    image_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg"
  },
  {
    title: "The Shawshank Redemption",
    description: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison",
    price_per_day: 7.99,
    condition: "As New",
    image_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg"
  },
  {
    title: "Titanic",
    description: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.",
    price_per_day: 12.99,
    condition: "Good State",
    image_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg"
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
    category: movie[:category],
    user: User.last
  )
  product.image.attach(io: file, filename: "#{movie[:title].parameterize.underscore}.jpg", content_type: "image/jpg")
  product.save
end
