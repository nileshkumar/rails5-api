# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "creating Articles ----------------------------------"
Article.create([
  {
  title: 'Article Title One',
  content: 'Content one',
  slug: 'article-one'
  },
  {
  title: 'Article Title Two',
  content: 'Content two',
  slug: 'article-two'
  },
  {
  title: 'Article Title Three',
  content: 'Content three',
  slug: 'article-three'
  }
])
puts "created #{Article.count} Articles ----------------------------------------"
