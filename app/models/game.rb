class Game < ActiveRecord::Base
  belongs_to :genre
  has_many :user_games
  has_many :users, through: :user_games
  has_many :game_platforms
  has_many :platforms, through: :game_platforms
end
