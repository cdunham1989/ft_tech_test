require 'sinatra/base'

class FTRatings < Sinatra::Base
    get '/' do
        'We welcome your feedback!'
    end

    run! if app_file == $0
end