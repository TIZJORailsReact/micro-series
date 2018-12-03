# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
series = Series.create!(name: "Doctor Who")
season = Season.create!(series: series, name: "First season", number: 1)
episode_1 = Episode.create!(season: season, episode_number: 1, name: "Introduction", series: series, link: 'lRt54xjIq7w')
