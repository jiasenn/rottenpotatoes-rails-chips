class Movie < ActiveRecord::Base
  def self.all_ratings
    # Return ['G','PG','PG-13','R']
    %w(G PG PG-13 R)
  end
  def self.with_ratings(ratings_list)
    if ratings_list.nil?
      return Movie.all
    else
      return Movie.where(:rating => ratings_list)
    end
  end
  def self.filter_and_sort(a,b)
    if a.nil?
      return Movie.all.order(b)
    else
      return Movie.where(:rating => a).order(b)
    end
  end
end
