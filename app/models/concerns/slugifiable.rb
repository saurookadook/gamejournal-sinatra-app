module Slugifiable

  module InstanceMethods
    def slug
      self.username.split(" ").map do |word|
        word.downcase
      end.join("-")
    end
  end

  module ClassMethods
    def find_by_slug(slug)
      unslug_name = slug.split("-").join(" ")
      User.where("LOWER(username) = ?", "#{unslug_name}").first
    end
  end
end
