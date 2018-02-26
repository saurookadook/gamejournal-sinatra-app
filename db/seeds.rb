user1 = User.create(username: "saurookadook", email: "maskiella@gmail.com", password: "ilovecatz")
user2 = User.create(username: "HerpDerpSean", email: "slewis@bostonphil.org", password: "imrealdumb")
user3 = User.create(username: "JasmineDragon92", email: "jackie.dreher@gmail.com", password: "meowmeow")

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

owned_game1 = OwnedGame.create(title: "Doom", genre_id: 4, platform_id: 2, notes: "Found lots of big guns")
owned_game2 = OwnedGame.create(title: "Doom", genre_id: 4, platform_id: 3)
archived_game1 = ArchivedGame.create(title: "Doom", genre_id: 4, platform_ids: [1, 2, 3])

owned_game3 = OwnedGame.create(title: "Mystic Messenger", genre_id: 5, platform_id: 10)
archived_game2 = ArchivedGame.create(title: "Mystic Messenger", genre_id: 5, platform_ids: [10])

owned_game4 = OwnedGame.create(title: "Hello Kitty: Big City Dreams", genre_id: 5, platform_id: 8, notes: "ZOMG FOUND THE CUTEST OUTFIT =^.^=")
archived_game3 = ArchivedGame.create(title: "Hello Kitty: Big City Dreams", genre_id: 5, platform_ids: [8])

owned_game5 = OwnedGame.create(title: "Witcher 3: Wild Hunt", genre_id: 4, platform_id: 2, notes: "Have best Gwent deck ever. Literally no one can beat me >:]")
archived_game4 = ArchivedGame.create(title: "Witcher 3: Wild Hunt", genre_id: 4, platform_ids: [1, 2, 3])

owned_game6 = OwnedGame.create(title: "Hearthstone", genre_id: 6, platform_id: 10, notes: "Cubelock op....")
owned_game7 = OwnedGame.create(title: "Hearthstone", genre_id: 6, platform_id: 1, notes: "All of my decks are terrible. Halp!")
archived_game5 = ArchivedGame.create(title: "Hearthstone", genre_id: 6, platform_ids: [1, 10])


user1.owned_games << owned_game1
user1.owned_games << owned_game5
user1.owned_games << owned_game6

user2.owned_games << owned_game3
user2.owned_games << owned_game4

user3.owned_games << owned_game1
user3.owned_games << owned_game3
user3.owned_games << owned_game5
user3.owned_games << owned_game7
