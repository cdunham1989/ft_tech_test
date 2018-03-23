class Ratings
    attr_reader :all_ratings
    
    def initialize(all_ratings = [])
        @all_ratings = all_ratings
    end

    def submit_rating(user_rating)
        @all_ratings.push(user_rating)
    end
end