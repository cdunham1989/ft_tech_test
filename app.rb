require 'sinatra/base'
require './lib/ratings'

class FTRatings < Sinatra::Base

    ratings = Ratings.new

    get '/' do
        erb :index
    end

    post '/create-new-rating' do
        ratings.submit_rating({ :name => params[:name], :rating => params[:rating] })
        redirect '/confirmation'
    end

    get '/confirmation' do
        erb :confirmation
    end

    get '/all_ratings' do
        @all_ratings = ratings.all_ratings
        erb :all_ratings
    end

    run! if app_file == $0
end