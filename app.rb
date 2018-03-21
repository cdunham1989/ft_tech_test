require 'sintra/base'

class FTRatings < Sinatra::base
    get '/' do
        'test'
    end

    run! if app_file == $0
end