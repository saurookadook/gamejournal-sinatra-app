class CreateArchivedGames < ActiveRecord::Migration[5.1]
  def change
    create_table :archived_games do |t|
      t.string :title
      t.integer :genre_id
      t.timestamps null: false
    end
  end
end
