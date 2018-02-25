class CreateUserGames < ActiveRecord::Migration[5.1]
  def change
    create_table :user_games do |t|
      t.integer :user_id
      t.integer :archived_game_id
    end
  end
end
