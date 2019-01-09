# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Series.destroy_all
series = Series.create!(name: "Doctor Who", genre: :action)
season = Season.create!(series: series, name: "First season", number: 1)
Episode.create!(season: season, episode_number: 1, name: "Introduction", series: series, link: 'FEc-OQ_oqDk')
Episode.create!(season: season, episode_number: 2, name: "Episode 2", series: series, link: 'XCt6f1Ttmy4')
Episode.create!(season: season, episode_number: 3, name: "Episode 3", series: series, link: '9S3YP9xAzRw')
season_2 = Season.create!(series: series, name: "Second season", number: 2)
Episode.create!(season: season_2, episode_number: 1, name: "Introduction", series: series, link: 'bB8fh4QUy-A')
Episode.create!(season: season_2, episode_number: 2, name: "Episode 2", series: series, link: 'yJqsPBWbtjk')
Episode.create!(season: season_2, episode_number: 3, name: "Episode 3", series: series, link: 'BJP9o4BEziI')

series_1 = Series.create!(name: "Game of thrones", genre: :action)
season_1 = Season.create!(series: series_1, name: "First season", number: 1)
Episode.create!(season: season_1, episode_number: 1, name: "Introduction", series: series, link: 'BpJYNVhGf1s')
Episode.create!(season: season_1, episode_number: 2, name: "Episode 2", series: series, link: 'gcTkNV5Vg1E')
Episode.create!(season: season_1, episode_number: 3, name: "Episode 3", series: series, link: 'iGp_N3Ir7Do')
