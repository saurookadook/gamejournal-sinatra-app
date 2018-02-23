class CreateGames < ActiveRecord::Migration[5.1]
  def change
    t.string :title
  end
end
