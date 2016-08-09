# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

karl = User.create(name: "Karl Wendlinger", email: "karl@wendlinger.au")
kamui = User.create(name: "Kamui Kobayashi", email: "kamui@kobayashi.jp")
jj = User.create(name: "JJ Lehto", email: "jj@lehto.fi")
andrea = User.create(name: "Andrea de Cesaris", email: "andrea@cesaris.it")

Profile.create([
  {bio: "Karl Wendlinger (born 20 December 1968) is an Austrian professional racing and former Formula One driver.", user: karl},
  {bio: "Kamui Kobayashi is a Japanese professional racing driver who recently competed in Formula One for Caterham. He also previously competed in the GP2 Series, the GP2 Asia Series (which he won), the FIA World Endurance Championship and Formula One from 2009 to 2012, and in 2014.", user: kamui},
  {bio: "Jyrki Juhani Järvilehto (born 31 January 1966 in Espoo), better known as \"JJ Lehto\", is a racing driver from Finland. He won the 24 Hours of Le Mans twice, in 1995 and 2005. He is also a former Formula One driver.", user: jj},
  {bio: "Andrea de Cesaris (31 May 1959 – 5 October 2014) was an Italian racing driver. He started 208 Formula One Grands Prix but never won, holding the record for the longest career without a race victory.", user: andrea}
  ])

tag_rails = Tag.create(tag: "rails")
tag_ruby = Tag.create(tag: "ruby")
tag_html = Tag.create(tag: "html")
tag_css = Tag.create(tag: "css")

post_code_in_rails = Post.create(title: "How to code in Rails", post: "Great, great explanation", user: karl, tags: [tag_rails, tag_ruby])
post_models =  Post.create(title: "Models", post: "All the great Rails Models", user: karl, tags: [tag_rails, tag_ruby, tag_html, tag_css])
post_relations =  Post.create(title: "Relations", post: "All the great Relations", user: kamui, tags: [tag_html, tag_css])

Comment.create([
  {comment: "Great article", user: jj, post: post_code_in_rails},
  {comment: "Meh", user: jj, post: post_models},
  {comment: "Frist post!", user: andrea, post: post_code_in_rails}
  ])
