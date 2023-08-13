# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user_1 = User.create(username: 'First', email: "first@mail.ru", password: "somepassword") 
user_2 = User.create(username: 'Second', email: "second@mail.ru", password: "somepassword")
post = Post.create(user: user_1, body: "Some smart and intriguing text", title: "The Best Article Ever")
Subscription.create(publisher: user_1, subscriber: user_2)
comment = Comment.create(body: "Awesome!!!", subject: post, user: user_2, post_id: post.id)
Comment.create(body: "Thanks!", subject: comment, user: user_1, post_id: post.id)

