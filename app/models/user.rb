class User < ActiveRecord::Base

  validates_presence_of :username, :email, :password
  has_secure_password

  has_many :owned_games
  # ???
  has_many :archived_games, through: :user_games

  def slug
    self.username.split(" ").map do |word|
      word.downcase
    end.join("-")
  end

  def self.find_by_slug(slug)
    unslug_name = slug.split("-").join(" ")
    User.where("LOWER(username) = ?", "#{unslug_name}").first
  end
end
