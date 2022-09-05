class Movie < ActiveRecord::Base
    def self.create_with_title(title)
        Movie.create(title:title)
    end
    def self.first_movie
        Movie.first
    end
    def self.last_movie
        Movie.last
    end
    def self.movie_count
        Movie.count
    end
    def self.find_movie_with_id(id)
        Movie.find(id)
    end
    def self.find_movie_with_attributes(query)
        Movie.find_by(query)
    end
    def self.find_movies_after_2002
        Movie.where('release_date >?', 2002)
    end
    def update_with_attributes(new_value)
        self.update(new_value)
    end
    def self.update_all_titles(new_value)
        Movie.update(title:new_value)
    end
    def self.delete_by_id(id)
        Movie.find(id).destroy
    end
    def self.delete_all_movies
        Movie.destroy_all
    end



end