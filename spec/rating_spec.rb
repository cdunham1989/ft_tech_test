require 'ratings'

describe Ratings do

    before(:each) do
        @ratings = Ratings.new
    end

    describe 'submit_rating' do
        it 'creates a new rating and stores within the object' do
            @ratings.submit_rating({ :name => 'Chris', :rating => 1 })
            expect(@ratings.all_ratings).to include ({ :name => 'Chris', :rating => 1})
        end
    end
end