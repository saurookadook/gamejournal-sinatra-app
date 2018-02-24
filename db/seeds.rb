user1 = User.create(username: "saurookadook", email: "maskiella@gmail.com", password: "ilovecatz")

platforms_list = {
  "Steam" => {},
  "PS4" => {},
  "XboxOne" => {},
  "Nintendo 3DS" => {},
  "Nintendo Switch" => {},
  "PS3" => {},
  "Xbox360" => {},
  "Nintendo DS" => {},
  "Nintendo WiiU" => {},
  "Mobile" => {}
}

platforms_list.each do |name, platform_hash|
  Platform.create(name: name)
  # p = Platform.new
  # p.name = name
  # p.save
end

genres_list = {
  "Action" => {},
  "Adventure" => {},
  "MMO" => {},
  "RPG" => {},
  "Simulation" => {},
  "Strategy" => {}
}

genres_list.each do |name, genre_hash|
  Genre.create(name: name)
  # p = Genre.new
  # p.name = name
  # p.save
end

game1 = Game.create(title: "Doom", genre_id: "4")

user1.games << game1
user1.games.last.platforms << Platform.find_by_id(5)
