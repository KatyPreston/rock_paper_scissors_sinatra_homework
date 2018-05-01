require('sinatra')
require('sinatra/contrib/all')

require_relative('models/game')


get '/rock/:opponent_choice' do
  game = Game.new(params[:opponent_choice])
  @outcome = game.rock()
  erb( :result )
end

get '/scissors/:opponent_choice' do
  game = Game.new(params[:opponent_choice])
  @outcome = game.scissors()
  erb( :result )
end

get '/paper/:opponent_choice' do
  game = Game.new(params[:opponent_choice])
  @outcome = game.paper()
  erb( :result )
end
