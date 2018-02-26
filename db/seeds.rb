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

owned_game1 = OwnedGame.create(title: "Doom", genre_id: 4)
archived_game1 = ArchivedGame.create(title: "Doom", genre_id: 4)
owned_game2 = OwnedGame.create(title: "Mystic Messenger", genre_id: 5)
archived_game2 = ArchivedGame.create(title: "Mystic Messenger", genre_id: 5)
owned_game3 = OwnedGame.create(title: "Hello Kitty: Big City Dreams", genre_id: 5)
archived_game3 = ArchivedGame.create(title: "Hello Kitty: Big City Dreams", genre_id: 5)

# user1.games << game1
# user1.games.last.platforms << Platform.find_by_id(2)
#
# user2.games << game1
# user2.games.last.platforms << Platform.find_by_id(3)
#
# user2.games << game2
# user2.games.last.platforms << Platform.find_by_id(10)
#
# user2.games << game3
# user2.games.last.platforms << Platform.find_by_id(8)
