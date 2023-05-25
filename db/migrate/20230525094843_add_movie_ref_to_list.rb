class AddMovieRefToList < ActiveRecord::Migration[7.0]
  def change
    add_reference :lists, :movie, null: false, foreign_key: true
  end
end
