# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Skill.destroy_all
Lesson.destroy_all
Comment.destroy_all 
Message.destroy_all

puts "Starting Seed"

User.create(username: "jojo", password: "123", first_name: "JoAnna", last_name: "Park", email: "joanna@gmail", points: 1, location: "Chicago", image_url: "https://media-exp1.licdn.com/dms/image/C4E03AQHhY1RZEx-PxA/profile-displayphoto-shrink_200_200/0?e=1609372800&v=beta&t=DyrOQAs4lk8NQCgomBbV_9tElkf4rVGdmcbL3ymqwU4")
User.create(username: "bobo", password: "123", first_name: "Bob", last_name: "Ross", email: "bob@gmail", points: 1, location: "New York", image_url: "https://www.biography.com/.image/t_share/MTIwNjA4NjMzOTU5NTgxMTk2/bob-ross-9464216-1-402.jpg")
User.create(username: "lili", password: "123", first_name: "Liz", last_name: "Clawson", email: "liz@gmail", points: 1, location: "Chicago", image_url: "https://s.clipartkey.com/mpngs/s/22-225009_octavia-double-bass-by-djdannyc-cartoon-playing-double.png")
User.create(username: "cece", password: "123", first_name: "Cecilia", last_name: "Smith", email: "cece@gmail", points: 1, location: "Los Angeles", image_url: "https://images2.minutemediacdn.com/image/upload/c_fill,w_720,ar_16:9,f_auto,q_auto,g_auto/shape/cover/sport/Annenberg-Space-For-Photographys-10-Year-Anniversa-9ee044e319535650e9ef8adb7e76ef22.jpg")
User.create(username: "Nini", password: "123", first_name: "Nilay", last_name: "Parikh", email: "nilay@gmail", points: 1, location: "Chicago", image_url: "https://media.istockphoto.com/vectors/builder-civil-engineer-smile-cartoon-character-in-helmet-and-vest-vector-id1126351724")

10.times do |i|
    user = User.create!(
      username: Faker::Name.unique.first_name,
      password: "123",
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Internet.email,
      location: Faker::Address.city,
      image_url: Faker::Avatar.image
      )
  end

Skill.create(name: "violin", category: "musical instrument", description: "Learn to play the violin", signed_up: false, video_url: "https://musicadvisor.com/wp-content/uploads/2017/05/playing-the-violin.jpg", user_id: User.first.id)
Skill.create(name: "painting", category: "visual arts", description: "Let me teach you how to use your brush", signed_up: false, video_url: "https://images-na.ssl-images-amazon.com/images/I/71KaNz7a4JL._AC_SL1024_.jpg", user_id: User.second.id)
Skill.create(name: "simple car stuff", category: "auto repair", description: "oil change, brake pads, air filters", signed_up: false, video_url: "https://www.thisweknow.org/wp-content/uploads/2018/10/Professional-Car-Mechanic.jpg", user_id: User.second.id)
Skill.create(name: "microsoft excel", category: "computer", description: "who says excel is an outdated skill to have", signed_up: false, video_url: "https://miro.medium.com/max/1200/0*XZu4UXGcY7zM7Ffr.png", user_id: User.fifth.id)
Skill.create(name: "tennis", category: "sports", description: "the only sport where social distanced play is possible", signed_up: false, video_url: "https://static01.nyt.com/images/2020/03/31/sports/31virus-tennis02/31virus-tennis02-superJumbo-v2.jpg", user_id: User.fifth.id)
Skill.create(name: "vegetarian cooking", category: "health & fitness", description: "say no to meat, and learn to cook your veggies right", signed_up: false, video_url: "https://imagesvc.meredithcorp.io/v3/mm/image?q=85&c=sc&poi=face&url=https%3A%2F%2Fimg1.cookinglight.timeinc.net%2Fsites%2Fdefault%2Ffiles%2Fstyles%2F4_3_horizontal_-_1200x900%2Fpublic%2F1542730855%2Favocado-black-bean-and-charred-tomato-bowl-detox-book-p28_0.jpg%3Fitok%3Dcg-HtykS", user_id: User.first.id)
Skill.create(name: "tarot card reading", category: "miscellaneous", description: "2021 will bring new and better things", signed_up: false, video_url: "https://www.sfweekly.com/wp-content/uploads/2020/08/tarot-2469670_1280.jpg", user_id: User.fourth.id)
Skill.create(name: "guitar", category: "musical instrument", description: "have you always wanted to play in a band? now is the time to pick up the guitar", signed_up: false, video_url: "https://play-guitars.com/wp-content/uploads/2019/06/which-is-the-easiest-guitar-to-learn-for-beginners.jpg", user_id: User.third.id)
Skill.create(name: "spanish", category: "languages", description: "aprende hablar en espanol", signed_up: false, video_url: "https://www.swedishnomad.com/wp-content/images/2019/08/Spanish-Words-2.jpg", user_id: User.fourth.id)
Skill.create(name: "league of legends", category: "games", description: "champion and role-specific strategies", signed_up: false, video_url: "https://images.contentstack.io/v3/assets/blt731acb42bb3d1659/blt45d6c2043ff36e28/5e21837f146ca8115b2d3332/Champion-List.jpg", user_id: User.first.id)

Skill.create(name: "yoga", category: "health & fitness", description: "practicing yoga can help you relax and calm your mind. it also provides physical benefits such as flexibility and strengthening", signed_up: false, video_url: "https://musicadvisor.com/wp-content/uploads/2017/05/playing-the-violin.jpg", user_id: User.first.id)
Skill.create(name: "haiku writing", category: "poetry writing", description: "practice your haiku writing skills", signed_up: false, video_url: "https://images-na.ssl-images-amazon.com/images/I/71KaNz7a4JL._AC_SL1024_.jpg", user_id: User.second.id)
Skill.create(name: "public speaking", category: "communication", description: "do you get nervous or anxious before public speaking? learn the techniques you need to be confident", signed_up: false, video_url: "https://www.thisweknow.org/wp-content/uploads/2018/10/Professional-Car-Mechanic.jpg", user_id: User.second.id)
Skill.create(name: "resume review", category: "job search", description: "who says excel is an outdated skill to have", signed_up: false, video_url: "https://miro.medium.com/max/1200/0*XZu4UXGcY7zM7Ffr.png", user_id: User.fifth.id)
Skill.create(name: "golf", category: "sports", description: "the only sport where social distanced play is possible", signed_up: false, video_url: "https://static01.nyt.com/images/2020/03/31/sports/31virus-tennis02/31virus-tennis02-superJumbo-v2.jpg", user_id: User.fifth.id)
Skill.create(name: "kpop dance", category: "health & fitness", description: "say no to meat, and learn to cook your veggies right", signed_up: false, video_url: "https://imagesvc.meredithcorp.io/v3/mm/image?q=85&c=sc&poi=face&url=https%3A%2F%2Fimg1.cookinglight.timeinc.net%2Fsites%2Fdefault%2Ffiles%2Fstyles%2F4_3_horizontal_-_1200x900%2Fpublic%2F1542730855%2Favocado-black-bean-and-charred-tomato-bowl-detox-book-p28_0.jpg%3Fitok%3Dcg-HtykS", user_id: User.first.id)
Skill.create(name: "nail art", category: "arts & craft", description: "2021 will bring new and better things", signed_up: false, video_url: "https://www.sfweekly.com/wp-content/uploads/2020/08/tarot-2469670_1280.jpg", user_id: User.fourth.id)
Skill.create(name: "crochet", category: "arts & craft", description: "have you always wanted to play in a band? now is the time to pick up the guitar", signed_up: false, video_url: "https://play-guitars.com/wp-content/uploads/2019/06/which-is-the-easiest-guitar-to-learn-for-beginners.jpg", user_id: User.third.id)
Skill.create(name: "plumbing", category: "home repair", description: "aprende hablar en espanol", signed_up: false, video_url: "https://www.swedishnomad.com/wp-content/images/2019/08/Spanish-Words-2.jpg", user_id: User.fourth.id)
Skill.create(name: "changing a lightbulb", category: "home repair", description: "champion and role-specific strategies", signed_up: false, video_url: "https://images.contentstack.io/v3/assets/blt731acb42bb3d1659/blt45d6c2043ff36e28/5e21837f146ca8115b2d3332/Champion-List.jpg", user_id: User.first.id)

puts "Complete!"

# Cohort.find_by(code: nil).id