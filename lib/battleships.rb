require 'sinatra/base'
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }

class BattleShips < Sinatra::Base
  
  set :views, Proc.new { File.join(root, "..", "views") }

  get '/' do
    erb :homepage
  end

  get '/new_game' do
    # @game = Game.new(Player.new("Phoebe"), Player.new("Dias"))
    # @player_one_name = @game.player_1.name
    erb(:new_game)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
