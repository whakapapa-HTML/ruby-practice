
Jeans.create!([
               { user_id: 1, brand_id: 1, lot_id: 1, year_id: 1, number_of_laundry: 1, date_of_purchase: Faker::Date.between(from: 30.days.ago, to: Date.today), jeans_image: open("#{Rails.root}/db/fixtures/55893-warner_home_video4.jpeg")},
               { user_id: 2, brand_id: 2, lot_id: 2, year_id: 2, number_of_laundry: 1, date_of_purchase: Faker::Date.between(from: 30.days.ago, to: Date.today), jeans_image: open("#{Rails.root}/db/fixtures/mohamad-khosravi-d54wbtjedog-unsplash.jpg")},
               { user_id: 3, brand_id: 4, lot_id: 1, year_id: 1, number_of_laundry: 2, date_of_purchase: Faker::Date.between(from: 30.days.ago, to: Date.today), jeans_image: open("#{Rails.root}/db/fixtures/mateus-campos-felipe-bWp6UhjOcBg-unsplash.jpg")},
               { user_id: 3, brand_id: 1, lot_id: 2, year_id: 1, number_of_laundry: 2, date_of_purchase: Faker::Date.between(from: 30.days.ago, to: Date.today), jeans_image: open("#{Rails.root}/db/fixtures/mohamad-khosravi-d54wbtjedog-unsplash.jpg")},
               { user_id: 4, brand_id: 1, lot_id: 1, year_id: 2, number_of_laundry: 2, date_of_purchase: Faker::Date.between(from: 30.days.ago, to: Date.today), jeans_image: open("#{Rails.root}/db/fixtures/mateus-campos-felipe-bWp6UhjOcBg-unsplash.jpg")},
               { user_id: 4, brand_id: 2, lot_id: 2, year_id: 2, number_of_laundry: 2, date_of_purchase: Faker::Date.between(from: 30.days.ago, to: Date.today), jeans_image: open("#{Rails.root}/db/fixtures/55893-warner_home_video4.jpeg")},
               { user_id: 4, brand_id: 3, lot_id: 1, year_id: 1, number_of_laundry: 4, date_of_purchase: Faker::Date.between(from: 30.days.ago, to: Date.today), jeans_image: open("#{Rails.root}/db/fixtures/academy-award-5504949_640.jpg")},
               { user_id: 5, brand_id: 4, lot_id: 2, year_id: 1, number_of_laundry: 1, date_of_purchase: Faker::Date.between(from: 30.days.ago, to: Date.today), jeans_image: open("#{Rails.root}/db/fixtures/mateus-campos-felipe-bWp6UhjOcBg-unsplash.jpg")},
               { user_id: 5, brand_id: 2, lot_id: 1, year_id: 1, number_of_laundry: 5, date_of_purchase: Faker::Date.between(from: 30.days.ago, to: Date.today), jeans_image: open("#{Rails.root}/db/fixtures/mateus-campos-felipe-bWp6UhjOcBg-unsplash.jpg")},
               { user_id: 5, brand_id: 1, lot_id: 2, year_id: 2, number_of_laundry: 1, date_of_purchase: Faker::Date.between(from: 30.days.ago, to: Date.today), jeans_image: open("#{Rails.root}/db/fixtures/jason-leung-EtOMMg1nSR8-unsplash.jpg")},
             ])
