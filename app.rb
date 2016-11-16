require('sinatra')
require('sinatra/reloader')
require('./lib/rock_paper_scissors')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/game') do

  @player1_input = params.fetch('player1')
  @player2_input = params.fetch('player2')

  @result = (@player1_input).beats?(@player2_input)
  erb(:index)
end

get('/player_vs_computer') do

  @human_input = params.fetch('human')

  @result2 = (@human_input).beats?(computer_player)
  erb(:index)
end
