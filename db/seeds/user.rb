
User.create!([
               { email: 'sample1@mail.com', password: 'password', name: Faker::Name.name, introduction: Faker::Lorem.sentence, image: open("#{Rails.root}/db/fixtures/55893-warner_home_video4.jpeg")},
               { email: 'sample2@mail.com', password: 'password', name: Faker::Name.name, introduction: Faker::Lorem.sentence, image: open("#{Rails.root}/db/fixtures/academy-award-5504949_640.jpg")},
               { email: 'sample3@mail.com', password: 'password', name: Faker::Name.name, introduction: Faker::Lorem.sentence, image: open("#{Rails.root}/db/fixtures/mateus-campos-felipe-bWp6UhjOcBg-unsplash.jpg")},
               { email: 'sample4@mail.com', password: 'password', name: Faker::Name.name, introduction: Faker::Lorem.sentence, image: open("#{Rails.root}/db/fixtures/しろ-removebg-preview.png")},
               { email: 'sample5@mail.com', password: 'password', name: Faker::Name.name, introduction: Faker::Lorem.sentence, image: open("#{Rails.root}/db/fixtures/ラーメンのアイコン。.png")},
             ])
