class CreateOwnedGames < ActiveRecord::Migration[5.1]
  def change
    create_table :owned_games do |t|
      t.string :title
      t.integer :genre_id
      t.integer :platform_id
      t.text :notes
      t.timestamps null: false
    end
  end
end
