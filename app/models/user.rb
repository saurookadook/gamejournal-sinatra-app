class User < ActiveRecord::Base
  include Slugifiable::InstanceMethods
  extend Slugifiable::ClassMethods

  validates_presence_of :name, :email, :password

  has_many :user_games
  has_many :games, through: :user_games
end
