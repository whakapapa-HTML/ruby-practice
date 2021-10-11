
  10.times do |n|
    Post.create!(
      body: Faker::Lorem.sentence,
      image: open("#{Rails.root}/db/fixtures/mohamad-khosravi-d54wbtjedog-unsplash.jpg"),
      jeans_id: "#{n + 1}",
      user_id: "#{n + 1}"
    )
  end