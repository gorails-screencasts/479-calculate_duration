# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Creating the first series...."
series = Series.create(title: "Rails For Beginners")
puts "Successfully created the first series"

5.times do |n|
  n = n + 1

  puts "Creating episode #{n}"
  Episode.create(title: "Episode #{n}", duration: rand(500..1000), series: (n.odd? ? series : nil))
end
