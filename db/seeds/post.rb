
  3.times do |n|
    Post.create!(
      body: Faker::Lorem.sentence,
      image: open("#{Rails.root}/db/fixtures/mohamad-khosravi-d54wbtjedog-unsplash.jpg"),
      jeans_id: "#{n + 1}",
      user_id: "#{n + 1}"
    )
  end


  3.times do |n|
    Post.create!(
      body: Faker::Lorem.sentence,
      image: open("#{Rails.root}/db/fixtures/mateus-campos-felipe-bWp6UhjOcBg-unsplash.jpg"),
      jeans_id: "#{n + 1}",
      user_id: "#{n + 1}"
    )
  end

  3.times do |n|
    Post.create!(
      body: Faker::Lorem.sentence,
      image: open("#{Rails.root}/db/fixtures/mohamad-khosravi-d54wbtjedog-unsplash.jpg"),
      jeans_id: "#{n + 1}",
      user_id: "#{n + 1}"
    )
  end

  3.times do |n|
    Post.create!(
      body: Faker::Lorem.sentence,
      image: open("#{Rails.root}/db/fixtures/ivan-bogdanov-17qC7l19hMI-unsplash.jpg"),
      jeans_id: "#{n + 2}",
      user_id: "#{n + 2}"
    )
  end


  3.times do |n|
    Post.create!(
      body: Faker::Lorem.sentence,
      image: open("#{Rails.root}/db/fixtures/55893-warner_home_video4.jpeg"),
      jeans_id: "#{n + 3}",
      user_id: "#{n + 3}"
    )
  end


  3.times do |n|
    Post.create!(
      body: Faker::Lorem.sentence,
      image: open("#{Rails.root}/db/fixtures/jason-leung-EtOMMg1nSR8-unsplash.jpg"),
      jeans_id: "#{n + 1}",
      user_id: "#{n + 1}"
    )
  end