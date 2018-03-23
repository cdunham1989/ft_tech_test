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

    describe 'view all' do
        it 'can show all the ratings that have been created' do
            @ratings.submit_rating({ :name => 'Chris', :rating => 1 })
            @ratings.submit_rating({ :name => 'John', :rating => 3 })
            expect(@ratings.view_all).to eq("Name: Chris  Rating: 1\nName: John  Rating: 3\n")
        end
    end
end