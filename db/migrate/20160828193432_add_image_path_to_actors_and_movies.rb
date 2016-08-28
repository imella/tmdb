class AddImagePathToActorsAndMovies < ActiveRecord::Migration[5.0]
  def change
    add_column :actors, :image_path, :string
    add_column :movies, :image_path, :string
  end
end
