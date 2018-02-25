class Platform < ActiveRecord::Base
  has_many :owned_games
  has_many :game_platforms
  has_many :archived_games, through: :game_platforms
end
