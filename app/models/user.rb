class User < ActiveRecord::Base
  # include Slugifiable::InstanceMethods
  # extend Slugifiable::ClassMethods

  validates_presence_of :username, :email, :password
  has_secure_password

  has_many :user_games
  has_many :games, through: :user_games

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
