# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "creating user"
player_one = User.create(name: 'john doe', phone_number: '9988776655')
player_two = User.create(name: 'cynthia smith', phone_number: '9988778885')

puts "creating game"
game = Game.create(player_one_id: player_one.id, player_two_id: player_two.id)

puts "creating leader board data"
LeaderBoard.create(user_id: player_one.id,  score: 10, total_games: 1,  win: 1)
LeaderBoard.create(user_id: player_two.id,  score: 0, total_games: 1,  loss: 1)

puts "creating game metrics"
GameMetric.create(user_id: player_one.id, result: 1, game_id: game.id)
GameMetric.create(user_id: player_two.id, result: 0, game_id: game.id)