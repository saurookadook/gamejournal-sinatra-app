class OwnedGame < ActiveRecord::Base

  belongs_to :genre
  belongs_to :user
  belongs_to :platform

  def slug
    self.title.split(" ").map do |word|
      word.downcase
    end.join("-")
  end

  def self.find_by_slug(slug)
    unslug_title = slug.split("-").join(" ")
    Game.where("LOWER(title) = ?", "#{unslug_title}").first
  end

end
