class Ratings
    attr_reader :all_ratings
    
    def initialize(all_ratings = [])
        @all_ratings = all_ratings
    end

    def submit_rating(user_rating)
        @all_ratings.push(user_rating)
    end

    def view_all
        ratings_to_display = ""
        @all_ratings.each do |rating|
            ratings_to_display += "Name: #{rating[:name]}  Rating: #{rating[:rating]}\n"
        end
        ratings_to_display
    end
end