# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Article.destroy_all
User.destroy_all

p "Creating user"
admin_user = User.create(login: "wsmith", url: "http://admin.com", avatar_url: "http://no-avatar.com", provider: "github", password: 'secret')
p "User created succesfully"

p "Creating articles examples"
Article.create([
    { title: 'Article title 1', content: 'Article content 1', slug: 'article-title-1', user: admin_user },
    { title: 'Article title 2', content: 'Article content 2', slug: 'article-title-2', user: admin_user },
    { title: 'Article title 3', content: 'Article content 3', slug: 'article-title-3', user: admin_user }
])
p "All articles created"