require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params["team"]["name"], params["team"]["motto"])
      @hero1 = Hero.new(params["team"]["members"][0]["name"], params["team"]["members"][0]["power"], params["team"]["members"][0]["biography"])
      @hero2 = Hero.new(params["team"]["members"][1]["name"], params["team"]["members"][1]["power"], params["team"]["members"][1]["biography"])
      @hero3 = Hero.new(params["team"]["members"][2]["name"], params["team"]["members"][2]["power"], params["team"]["members"][2]["biography"])
      erb :team
    end

    
end
