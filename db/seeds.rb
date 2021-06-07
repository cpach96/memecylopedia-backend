# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

meme = Meme.create(image: "www.google.com", title:"Le funny meme", description: "the first ever meme")

meme_ref = MemeReference.create(meme_id: 1, name: "pepe-frog")

meme_ref2 = MemeReference.create(meme_id: 1, name: "bachelor-frog")