require 'sinatra/base'
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }

class BattleShips < Sinatra::Base
  
  get '/' do
    erb(:homepage)
  end

  get '/new_game' do
    @game = Game.new(Player.new("Phoebe"), Player.new("Dias"))
    @player_one_name = @game.player_one.name
    erb(:new_game)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
