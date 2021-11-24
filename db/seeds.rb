# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

user = User.find_or_initialize_by(email: 'test@test.com')
user.password = 'password'
user.password_confirmation = 'password'

book = user.books.find_or_initialize_by(title: 'The Witch', description: 'Book from Mila Pete', slug: '0')
book2 = user.books.find_or_initialize_by(title: 'The Blood', description: 'Book from Camila Sam', slug: '0')
book2 = user.books.find_or_initialize_by(title: 'It', description: 'Book from Piter Jason', slug: '0')

user.save

user2 = User.find_or_initialize_by(email: 'test2@test.com')
user2.password = 'password'
user2.password_confirmation = 'password'

book = user2.books.find_or_initialize_by(title: 'Let me bleed', description: 'Book from Salma dreeson', slug: '0')

user2.save