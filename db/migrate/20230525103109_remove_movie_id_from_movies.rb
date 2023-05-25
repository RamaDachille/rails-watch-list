class RemoveMovieIdFromMovies < ActiveRecord::Migration[7.0]
  def change
    remove_reference :movies, :movie
  end
end
