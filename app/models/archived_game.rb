class ArchivedGame < ActiveRecord::Base

  belongs_to :genre
  has_many :user_games
  has_many :users, through: :user_games
  has_many :game_platforms
  has_many :platforms, through: :game_platforms

  def slug
    self.title.split(" ").map do |word|
      word.downcase
    end.join("-")
  end

  def self.find_by_slug(slug)
    unslug_title = slug.split("-").join(" ")
    self.where("LOWER(title) = ?", "#{unslug_title}").first
  end

end
