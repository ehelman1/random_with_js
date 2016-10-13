require 'sinatra'
require_relative 'random_pair.rb'
require_relative 'formatter.rb'

get '/' do
    erb :get_names, :locals => {:name_pairs => name_pairs= " ", :message => " "}
end

post '/names' do
    names = params[:name]
    random_names_array = randomizer(names)
    name_pairs = fix(random_names_array)
    erb :get_names, :locals => {:name_pairs => name_pairs, :message => "Enter some new names to pair."}
end