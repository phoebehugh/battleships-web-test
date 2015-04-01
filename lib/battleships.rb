require 'sinatra/base'
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }

# class Player
#   attr_accessor :name
# end

# class Game
#   def players
#     @players || = []
#   end

#   def add_player(player)
#     players << player
#   end
# end

class BattleShips < Sinatra::Base
  
  set :views, Proc.new { File.join(root, "..", "views") }
  set :public_folder, Proc.new { File.join(root, "..", "public") }

#
  enable :sessions

  get '/' do # taking in something like gets
    # puts session.inspect
    puts session[:years_alive]
    erb :homepage
  end

  get '/registration' do
    erb(:name)
  end

  post '/new_game' do
      # puts session.inspect
      # puts params.inspect
      # player = Player.new
      # player.name = @name
      name = params[:player_name]
      "Oh your name is #{name}"
      session[:name] = params[:board_size]
      session[:name] = params[:pieces_count]
      erb(:new_game)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
