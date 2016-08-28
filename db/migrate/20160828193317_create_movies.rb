class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :slug
      t.string :year
      t.text :description

      t.timestamps
    end
  end
end
