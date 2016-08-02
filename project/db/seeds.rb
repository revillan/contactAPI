# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create!(username: 'lily2016')
user2 = User.create!(username: 'reilly2016')
user3 = User.create!(username: 'bob2016')

contact1 = Contact.create!(name: 'Cindy', email: 'cindy@gmail.com', user_id: 1)
contact2 = Contact.create!(name: 'Candy', email: 'candy@gmail.com', user_id: 1)
contact3 = Contact.create!(name: 'Kitty', email: 'kitty@gmail.com', user_id: 2)
contact4 = Contact.create!(name: 'Rose', email: 'rose@gmail.com', user_id: 2)
contact5 = Contact.create!(name: 'Rob', email: 'rob@gmail.com', user_id: 3)

# reilly knows cindy
ContactShare.create!(user_id: 2, contact_id: 1)
# lily knows Rose
ContactShare.create!(user_id: 1, contact_id: 4)
# bob knows cindy
ContactShare.create!(user_id: 3, contact_id: 1)
# reilly knows rob
ContactShare.create!(user_id: 2, contact_id: 5)
# lily knows rob
ContactShare.create!(user_id: 1, contact_id: 5)
# bob knows Kitty
ContactShare.create!(user_id: 3, contact_id: 3)

Comment.create!(author_id: 1, body: 'hi', commentable_id: 1, commentable_type: 'Contact')
Comment.create!(author_id: 1, body: 'hey', commentable_id: , commentable_type: 'Contact')
