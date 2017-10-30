# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ilona = Author.create(name: 'Ilona Andrews', net_worth: 120000)
jim = Author.create({name: 'Jim Butcher', net_worth: 200000, dob: '26/10/1971'})

jim_books = Book.create([{title: "Furies of Calderon",
 blurb: "Furies of Calderon is the first novel in the high fantasy series Codex Alera by Jim Butcher. The novel was first released by Ace Books in the United States as a Hardcover edition on October 5, 2004, followed by a Paperback edition on June 26, 2005. Orbit Books released a paperback edition in the United Kingdom in December 2009. It tells the story of a young boy named Tavi who is the only one without any fury crafting abilities. The novel was well received, with critics praising Butcher's turn at a more traditional fantasy setting, fast pacing, action, and his characterization of the antagonists.",
  genre: "Fantasy", }, 
  { title: "Storm Front", 
    blurb: "Meet Harry Dresden, Chicago's first (and only) Wizard P.I. Turns out the 'everyday' world is full of strange and magical things - and most of them don't play well with humans. That's where Harry comes in.

Harry is the best at what he does - and not just because he's the only one who does it. So when the Chicago P.D. has a case that transcends mortal capabilities, they look to him for answers. There's just one problem. Business, to put it mildly, stinks.

So when the police bring him in to consult on a grisly double murder committed with black magic, Harry's seeing dollar signs. But where there's black magic, there's a black mage behind it. And now that mage knows Harry's name. And that's when things start to get . . . interesting.

Magic - it can get a guy killed.",
genre: "Fantasty",
  }])
ilona_books = Book.create(
    title: "Magic Triumphs",
    blurb: "Mercenary Kate Daniels must risk all to protect everything she holds dear in this epic, can't-miss entry in the thrilling #1 New York Times bestselling urban fantasy series.

Kate has come a long way from her origins as a loner taking care of paranormal problems in post-Shift Atlanta. She's made friends and enemies. She's found love and started a family with Curran Lennart, the former Beast Lord. But her magic is too strong for the power players of the world to let her be.

Kate and her father, Roland, currently have an uneasy truce, but when he starts testing her defenses again, she knows that sooner or later, a confrontation is inevitable. The Witch Oracle has begun seeing visions of blood, fire, and human bones. And when a mysterious box is delivered to Kate's doorstep, a threat of war from the ancient enemy who nearly destroyed her family, she knows their time is up.

Kate Daniels sees no other choice but to combine forces with the unlikeliest of allies. She knows betrayal is inevitable. She knows she may not survive the coming battle. But she has to try.

For her child.

For Atlanta.

For the world.",
genre: "Urban Fantasy",
    )
jim.books << jim_books
ilona.books << ilona_books
jim.save
ilona.save