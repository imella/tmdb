class CreateActors < ActiveRecord::Migration[5.0]
  def change
    create_table :actors do |t|
      t.string :name
      t.string :slug
      t.date :birthdate
      t.text :bio

      t.timestamps
    end
  end
end
