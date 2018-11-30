# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create([
              { name: 'testUser', email: 'test@user.com', password: 'qwerty',
                encrypted_password: '$2a$11$stuRQsXboDka1QSaS5WNHe2IBidCiKabwk3p9TVUiIJiBQ8R9W3J6' },
              { name: 'testUser2', email: 'test2@user.com', password: 'qwerty',
                encrypted_password: '$2a$11$stuRQsXboDka1QSaS5WNHe2IBidCiKabwk3p9TVUiIJiBQ8R9W3J6' }
            ])

Post.create([
              { message: 'I am test user', created_at: '2018-11-22 14:48:01.288402',
                updated_at: '2018-11-22 14:48:01.288402', user_id: '1' },
              { message: 'This is test user 2', created_at: '2018-11-22 14:48:01.288402',
                updated_at: '2018-11-22 14:48:01.288402', user_id: '2' }
            ])
