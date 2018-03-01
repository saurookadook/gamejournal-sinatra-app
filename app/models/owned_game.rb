class OwnedGame < ActiveRecord::Base

  belongs_to :user
  belongs_to :genre
  belongs_to :platform

  def slug
    self.title.split(" ").map do |word|
      word.downcase
    end.join("-")
  end

  def self.find_by_slug(slug)
    unslug_title = slug.split("-").join(" ")
    self.where("LOWER(title) = ?", "#{unslug_title}").first
  end

  def has_notes?
    false if self.notes == "" || self.notes == nil
  end

end
