require 'ratings'

describe Ratings do
    describe '.create' do

        before(:each) do
            @ratings = Ratings.new
        end

        it 'creates a new rating' do
            @ratings.create({ :name => 'Chris', :rating => 1 })
            expect(@ratings.all_ratings).to include ({ :name => 'Chris', :rating => 1})
        end
    end
end