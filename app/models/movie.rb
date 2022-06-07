class Movie < ActiveRecord::Base
  def self.all_ratings
    #Return ['G','PG','PG-13','R']
    %w(G PG PG-13 R)
  end
  def self.filter_by_ratings(ratings)
    Movie.where(rating: ratings)
  end
end
