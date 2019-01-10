# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Episode.destroy_all
Season.destroy_all
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
Episode.create!(season: season_1, episode_number: 1, name: "Introduction", series: series_1, link: 'BpJYNVhGf1s')
Episode.create!(season: season_1, episode_number: 2, name: "Episode 2", series: series_1, link: 'gcTkNV5Vg1E')
Episode.create!(season: season_1, episode_number: 3, name: "Episode 3", series: series_1, link: 'iGp_N3Ir7Do')

series_2 = Series.create!(name: "Westworld", genre: :drama)
season_1 = Season.create!(series: series_2, name: "First season", number: 1)
Episode.create!(season: season_1, episode_number: 1, name: "Introduction", series: series_2, link: '0zZcBv0gPK0')
Episode.create!(season: season_1, episode_number: 2, name: "Episode 2", series: series_2, link: 'HkyMsoF4Evw')

series_3 = Series.create!(name: "THE HANDMAID'S TALE", genre: :drama)
season_1 = Season.create!(series: series_3, name: "First season", number: 1)
Episode.create!(season: season_1, episode_number: 1, name: "Introduction", series: series_3, link: 'SAXy_NyUN6k')
Episode.create!(season: season_1, episode_number: 2, name: "Episode 2", series: series_3, link: 'kzeB-3ZnRSE')

series_4 = Series.create!(name: "BETTER CALL SAUL", genre: :drama)
season_1 = Season.create!(series: series_4, name: "First season", number: 1)
Episode.create!(season: season_1, episode_number: 1, name: "Introduction", series: series_4, link: '9q4qzYrHVmI')
Episode.create!(season: season_1, episode_number: 2, name: "Episode 2", series: series_4, link: 'xZYCcZ3gGEU')

series_5 = Series.create!(name: "BIG MOUTH", genre: :animation)
season_1 = Season.create!(series: series_5, name: "First season", number: 1)
Episode.create!(season: season_1, episode_number: 1, name: "Introduction", series: series_5, link: 'oTC7wQMHHEA')
Episode.create!(season: season_1, episode_number: 2, name: "Episode 2", series: series_5, link: '4QUix4Hdyps')

series_6 = Series.create!(name: "SUCCESSION", genre: :drama)
season_1 = Season.create!(series: series_6, name: "First season", number: 1)
Episode.create!(season: season_1, episode_number: 1, name: "Introduction", series: series_6, link: 'OzYxJV_rmE8')
Episode.create!(season: season_1, episode_number: 2, name: "Episode 2", series: series_6, link: 'tUoNbvlDnsA')

series_7 = Series.create!(name: "THE GOOD PLACE", genre: :comedy)
season_1 = Season.create!(series: series_7, name: "First season", number: 1)
Episode.create!(season: season_1, episode_number: 1, name: "Introduction", series: series_7, link: 'RfBgT5djaQw')
Episode.create!(season: season_1, episode_number: 2, name: "Episode 2", series: series_7, link: 'Bu2D_-L6QkM')

series_8 = Series.create!(name: "HOMECOMING", genre: :thriller)
season_1 = Season.create!(series: series_8, name: "First season", number: 1)
Episode.create!(season: season_1, episode_number: 1, name: "Introduction", series: series_8, link: '9WJSdpE-sJQ')
Episode.create!(season: season_1, episode_number: 2, name: "Episode 2", series: series_8, link: 'WdsrTWKCGIw')

series_9 = Series.create!(name: "BOJACK HORSEMAN", genre: :animation)
season_1 = Season.create!(series: series_9, name: "First season", number: 1)
Episode.create!(season: season_1, episode_number: 1, name: "Introduction", series: series_9, link: 'i1eJMig5Ik4')
Episode.create!(season: season_1, episode_number: 2, name: "Episode 2", series: series_9, link: 'VESKjoxAmZg')

series_10 = Series.create!(name: "BARRY", genre: :comedy)
season_1 = Season.create!(series: series_10, name: "First season", number: 1)
Episode.create!(season: season_1, episode_number: 1, name: "Introduction", series: series_10, link: 'M6TZdk1t8Zo')
Episode.create!(season: season_1, episode_number: 2, name: "Episode 2", series: series_10, link: 'bgA3_ARt174')

series_11 = Series.create!(name: "SHARP OBJECTS", genre: :drama)
season_1 = Season.create!(series: series_11, name: "First season", number: 1)
Episode.create!(season: season_1, episode_number: 1, name: "Introduction", series: series_11, link: '_v8Fm3O8cp0')
Episode.create!(season: season_1, episode_number: 2, name: "Episode 2", series: series_11, link: 'DgljcMqPG98')

series_12 = Series.create!(name: "POSE", genre: :drama)
season_1 = Season.create!(series: series_12, name: "First season", number: 1)
Episode.create!(season: season_1, episode_number: 1, name: "Introduction", series: series_12, link: '_t4YuPXdLZw')
Episode.create!(season: season_1, episode_number: 2, name: "Episode 2", series: series_12, link: 'Us-yvjTUepA')

series_13 = Series.create!(name: "KILLING EVE", genre: :thriller)
season_1 = Season.create!(series: series_13, name: "First season", number: 1)
Episode.create!(season: season_1, episode_number: 1, name: "Introduction", series: series_13, link: 'Kk0PyD-XNZA')
Episode.create!(season: season_1, episode_number: 2, name: "Episode 2", series: series_13, link: 'DUlfCj60koc')

series_14 = Series.create!(name: "GLOW", genre: :comedy)
season_1 = Season.create!(series: series_14, name: "First season", number: 1)
Episode.create!(season: season_1, episode_number: 1, name: "Introduction", series: series_14, link: 'AZqDO6cTYVY')
Episode.create!(season: season_1, episode_number: 2, name: "Episode 2", series: series_14, link: '9iM7W1Dvl6Q')

series_15 = Series.create!(name: "ATLANTA", genre: :comedy)
season_1 = Season.create!(series: series_15, name: "First season", number: 1)
Episode.create!(season: season_1, episode_number: 1, name: "Introduction", series: series_15, link: 'z7OB6CIZeOY')
Episode.create!(season: season_1, episode_number: 2, name: "Episode 2", series: series_15, link: 'SMpAKEYm8Qo')

series_16 = Series.create!(name: "Younger", genre: :comedy)
season_1 = Season.create!(series: series_16, name: "First season", number: 1)
Episode.create!(season: season_1, episode_number: 1, name: "Introduction", series: series_16, link: 'rw9zFMbkQks')
Episode.create!(season: season_1, episode_number: 2, name: "Episode 2", series: series_16, link: 'q_a2biOUbfE')

series_17 = Series.create!(name: "The Walking Dead", genre: :action)
season_1 = Season.create!(series: series_17, name: "First season", number: 1)
Episode.create!(season: season_1, episode_number: 1, name: "Introduction", series: series_17, link: 'R1v0uFms68U')
Episode.create!(season: season_1, episode_number: 2, name: "Episode 2", series: series_17, link: 'cgX1geb4FlA')

series_18 = Series.create!(name: "London Spy", genre: :drama)
season_1 = Season.create!(series: series_18, name: "First season", number: 1)
Episode.create!(season: season_1, episode_number: 1, name: "Introduction", series: series_18, link: 'O1PEQkpKTLI')
Episode.create!(season: season_1, episode_number: 2, name: "Episode 2", series: series_18, link: 'd5CWWaF06uM')

series_19 = Series.create!(name: "Stranger Things", genre: :horror)
season_1 = Season.create!(series: series_19, name: "First season", number: 1)
Episode.create!(season: season_1, episode_number: 1, name: "Introduction", series: series_19, link: 'R1ZXOOLMJ8s')
Episode.create!(season: season_1, episode_number: 2, name: "Episode 2", series: series_19, link: 'XWxyRG_tckY')

series_20 = Series.create!(name: "The Night Manager", genre: :drama)
season_1 = Season.create!(series: series_20, name: "First season", number: 1)
Episode.create!(season: season_1, episode_number: 1, name: "Introduction", series: series_20, link: 'g-ZcaKdvML8')
Episode.create!(season: season_1, episode_number: 2, name: "Episode 2", series: series_20, link: 'ZoJ3lu03jug')

series_21 = Series.create!(name: "Broad City", genre: :comedy)
season_1 = Season.create!(series: series_21, name: "First season", number: 1)
Episode.create!(season: season_1, episode_number: 1, name: "Introduction", series: series_21, link: 'iC_xGWSkRKc')
Episode.create!(season: season_1, episode_number: 2, name: "Episode 2", series: series_21, link: 'IlAmyuWZdpw')

series_22 = Series.create!(name: "Transparent", genre: :comedy)
season_1 = Season.create!(series: series_22, name: "First season", number: 1)
Episode.create!(season: season_1, episode_number: 1, name: "Introduction", series: series_22, link: 'Xclds2kDf0g')
Episode.create!(season: season_1, episode_number: 2, name: "Episode 2", series: series_22, link: 'tcd2sX0O3Js')

series_23 = Series.create!(name: "Veep", genre: :comedy)
season_1 = Season.create!(series: series_23, name: "First season", number: 1)
Episode.create!(season: season_1, episode_number: 1, name: "Introduction", series: series_23, link: 'I2HoCG_iyhU')
Episode.create!(season: season_1, episode_number: 2, name: "Episode 2", series: series_23, link: '1ITJDqe7s5k')

series_24 = Series.create!(name: "The Night Of", genre: :drama)
season_1 = Season.create!(series: series_24, name: "First season", number: 1)
Episode.create!(season: season_1, episode_number: 1, name: "Introduction", series: series_24, link: 'PbHkfsyU-r8')
Episode.create!(season: season_1, episode_number: 2, name: "Episode 2", series: series_24, link: 'eQNs8nTHidU')
