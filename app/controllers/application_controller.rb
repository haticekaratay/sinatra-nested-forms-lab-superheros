require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do
        erb :super_hero
    end
    post "/teams" do
        #binding.pry
        @team = Team.new(params[:team])
        hero_data_array_of_hash = params[:team][:hero]
        hero_data_array_of_hash.each do |hero_hash|
            hero = SuperHero.new(hero_hash)
        end
        @heroes = SuperHero.all
        erb :team
    end


end
