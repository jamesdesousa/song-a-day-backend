james = User.create(name: 'james', username: 'jamesdesousa', password: 'james123')
sean = User.create(name: 'sean', username: 'sean123', password: 'sean123')
edm = Genre.create(genreName: 'Electronic')
pop = Genre.create(genreName: 'Pop')
rock= Genre.create(genreName: 'Rock')
hipHop = Genre.create(genreName: 'Hip-Hop')
awaken = Song.create(name: 'Awaken', artist: 'Big Wild', track_id: '4oYzwOTWpP3JTyKrTHJtqw', genre_id: 1)
gravity = Song.create(name: 'Gravity', artist: 'John Mayer', track_id: '3SktMqZmo3M9zbB7oKMIF7', genre_id: 2 )
wildflowers = Song.create(name: 'Wildflowers', artist: 'Tom Petty', track_id: "2Pr1nZpt8A8WP7QYpyq6L3", genre_id: 3)
nonstop = Song.create(name: 'Nonstop', artist: 'Drake', track_id: '4pQiWe7SzoQdGF6z8ZoZ9v', genre_id: 4)
post3 = Post.create(song_id: 3, user_id: 1, caption: 'a classic 🙌🏼 ')
post2 = Post.create(song_id: 2, user_id: 1, caption: 'relaxing vibe for today')
post1 = Post.create(song_id: 1, user_id: 1, caption: 'feels like youre floating' )
post4 = Post.create(song_id: 4, user_id: 2, caption: '🔥')
puts ('done!')