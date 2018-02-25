user1 = User.create(username: "saurookadook", email: "maskiella@gmail.com", password: "ilovecatz")
user2 = User.create(username: "HerpDerpSean", email: "slewis@bostonphil.org", password: "imrealdumb")

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

game1 = Game.create(title: "Doom", genre_id: 4)
game2 = Game.create(title: "Mystic Messenger", genre_id: 5)
game3 = Game.create(title: "Hello Kitty: Big City Dreams", genre_id: 5)

user1.games << game1
user1.games.last.platforms << Platform.find_by_id(2)

user2.games << game1
user2.games.last.platforms << Platform.find_by_id(3)

user2.games << game2
user2.games.last.platforms << Platform.find_by_id(10)

user2.games << game3
user2.games.last.platforms << Platform.find_by_id(8)
