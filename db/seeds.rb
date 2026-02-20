# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

places = Place.create([
  { name: "France" },
  { name: "Florida" },
  { name: "Colorado" },
  { name: "Montana" }
])

places.each do |place|
  Entry.create(
    title: "Trip to #{place.name}",
    description: "An amazing experience visiting #{place.name}.",
    occurred_on: Date.today - rand(365),
    place_id: place.id
  )
end

