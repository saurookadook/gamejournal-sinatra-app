class Genre < ActiveRecord::Base
  has_many :owned_games
  has_many :archived_games
end
