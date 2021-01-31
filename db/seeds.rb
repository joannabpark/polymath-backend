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

puts "Starting Seed!"

User.create(username: "jojo", password: "123", first_name: "JoAnna", last_name: "Park", email: "joanna@gmail.com", points: 1, location: "Chicago", image_url: "https://media-exp1.licdn.com/dms/image/C4E03AQHhY1RZEx-PxA/profile-displayphoto-shrink_200_200/0?e=1609372800&v=beta&t=DyrOQAs4lk8NQCgomBbV_9tElkf4rVGdmcbL3ymqwU4")
User.create(username: "bobo", password: "123", first_name: "Bob", last_name: "Ross", email: "bob@gmail.com", points: 1, location: "New York", image_url: "https://www.biography.com/.image/t_share/MTIwNjA4NjMzOTU5NTgxMTk2/bob-ross-9464216-1-402.jpg")
User.create(username: "lili", password: "123", first_name: "Liz", last_name: "Clawson", email: "liz@gmail.com", points: 1, location: "Chicago", image_url: "https://s.clipartkey.com/mpngs/s/22-225009_octavia-double-bass-by-djdannyc-cartoon-playing-double.png")
User.create(username: "cece", password: "123", first_name: "Cecilia", last_name: "Smith", email: "cece@gmail.com", points: 1, location: "Los Angeles", image_url: "https://images2.minutemediacdn.com/image/upload/c_fill,w_720,ar_16:9,f_auto,q_auto,g_auto/shape/cover/sport/Annenberg-Space-For-Photographys-10-Year-Anniversa-9ee044e319535650e9ef8adb7e76ef22.jpg")
User.create(username: "nini", password: "123", first_name: "Nilay", last_name: "Parikh", email: "nilay@gmail.com", points: 1, location: "Chicago", image_url: "https://media.istockphoto.com/vectors/builder-civil-engineer-smile-cartoon-character-in-helmet-and-vest-vector-id1126351724")

10.times do |i|
    user = User.create!(
      username: Faker::Name.unique.first_name,
      password: "123",
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Internet.email,
      points: 1,
      location: Faker::Address.city,
      image_url: Faker::Avatar.image
      )
  end

Skill.create(name: "violin", category: "musical instrument", description: "Learn to play the violin", video_url: "https://musicadvisor.com/wp-content/uploads/2017/05/playing-the-violin.jpg", user_id: User.all.sample.id)
Skill.create(name: "painting", category: "visual arts", description: "Let me teach you how to use your brush", video_url: "https://images-na.ssl-images-amazon.com/images/I/71KaNz7a4JL._AC_SL1024_.jpg", user_id: User.second.id)
Skill.create(name: "simple car stuff", category: "auto repair", description: "oil change, brake pads, air filters", video_url: "https://www.thisweknow.org/wp-content/uploads/2018/10/Professional-Car-Mechanic.jpg", user_id: User.all.sample.id)
Skill.create(name: "microsoft excel", category: "computer", description: "who says excel is an outdated skill to have", video_url: "https://miro.medium.com/max/1200/0*XZu4UXGcY7zM7Ffr.png", user_id: User.all.sample.id)
Skill.create(name: "tennis", category: "sports", description: "the only sport where social distanced play is possible", video_url: "https://static01.nyt.com/images/2020/03/31/sports/31virus-tennis02/31virus-tennis02-superJumbo-v2.jpg", user_id: User.all.sample.id)
Skill.create(name: "vegetarian cooking", category: "health & fitness", description: "say no to meat, and learn to cook your veggies right", video_url: "https://imagesvc.meredithcorp.io/v3/mm/image?q=85&c=sc&poi=face&url=https%3A%2F%2Fimg1.cookinglight.timeinc.net%2Fsites%2Fdefault%2Ffiles%2Fstyles%2F4_3_horizontal_-_1200x900%2Fpublic%2F1542730855%2Favocado-black-bean-and-charred-tomato-bowl-detox-book-p28_0.jpg%3Fitok%3Dcg-HtykS", user_id: User.first.id)
Skill.create(name: "tarot card reading", category: "miscellaneous", description: "2021 will bring new and better things", video_url: "https://www.sfweekly.com/wp-content/uploads/2020/08/tarot-2469670_1280.jpg", user_id: User.all.sample.id)
Skill.create(name: "guitar", category: "musical instrument", description: "have you always wanted to play in a band? now is the time to pick up the guitar", video_url: "https://play-guitars.com/wp-content/uploads/2019/06/which-is-the-easiest-guitar-to-learn-for-beginners.jpg", user_id: User.all.sample.id)
Skill.create(name: "spanish", category: "languages", description: "aprende hablar en espanol", video_url: "https://www.swedishnomad.com/wp-content/images/2019/08/Spanish-Words-2.jpg", user_id: User.all.sample.id)
Skill.create(name: "league of legends", category: "games", description: "champion and role-specific strategies", video_url: "https://images.contentstack.io/v3/assets/blt731acb42bb3d1659/blt45d6c2043ff36e28/5e21837f146ca8115b2d3332/Champion-List.jpg", user_id: User.all.sample.id)
Skill.create(name: "yoga", category: "health & fitness", description: "practicing yoga can help you relax and calm your mind. it also provides physical benefits such as flexibility and strengthening", video_url: "https://www.history.com/.image/t_share/MTY0OTE4ODAzMDQwMzE0Njg1/yoga-gettyimages-1142820079-promo.jpg", user_id: User.all.sample.id)
Skill.create(name: "haiku writing", category: "poetry writing", description: "practice your haiku writing skills", video_url: "https://www.cbc.ca/kidscbc2/content/contests/haiku_howto2.jpg", user_id: User.second.id)
Skill.create(name: "public speaking", category: "communication", description: "do you get nervous or anxious before public speaking? learn the techniques you need to be confident", video_url: "https://hdcdnsun2.r.worldssl.net/sites/www.hypnosisdownloads.com/files/a-guide-to-public-speaking.jpg", user_id: User.all.sample.id)
Skill.create(name: "resume review", category: "job search", description: "do you need a resume that will stand out so that you can land the job of your dreams? I'm the person for you.", video_url: "https://content.money.com/wp-content/uploads/2018/12/190102-what-your-resume-should-look-like-2019.jpg?quality=60&w=800", user_id: User.all.sample.id)
Skill.create(name: "golf", category: "sports", description: "the only sport where social distanced play is possible", video_url: "https://westmorelandca.org/wp-content/uploads/2017/08/golfer-golf-cartoons-series-number-4-4810757.jpg", user_id: User.all.sample.id)
Skill.create(name: "kpop dance", category: "health & fitness", description: "are you a fan of kpop? do you want to learn the choreo to your favorite kpop group songs?", video_url: "https://1409791524.rsc.cdn77.org/data/images/full/547697/top-k-pop-groups-with-the-best-dance-choreography-in-mv.png", user_id: User.all.sample.id)
Skill.create(name: "nail art", category: "arts & craft", description: "who doesn't want pretty nails?", video_url: "https://media3.s-nbcnews.com/j/newscms/2019_46/1507899/thanksgiving-nail-art-today-main-tease-191115_e16fe19243e55197cf8e8218d26f41fa.fit-760w.jpg", user_id: User.all.sample.id)
Skill.create(name: "crochet", category: "arts & craft", description: "crocheting is the perfect hobby for all", video_url: "https://idsb.tmgrup.com.tr/ly/uploads/images/2020/07/28/48859.jpg", user_id: User.all.sample.id)
Skill.create(name: "plumbing service", category: "home repair", description: "is there a leak in your pipes? let me help you fix that leak", video_url: "https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/4Q2EYRR2XMI6TMIL6BNCFZ2YMU.jpg", user_id: User.fourth.id)
Skill.create(name: "changing a lightbulb", category: "home repair", description: "sometimes, it's just so hard to find a light bulb that fits. let me help you find that perfect light bulb", video_url: "https://image.shutterstock.com/z/stock-vector-child-changing-light-bulb-605896502.jpg", user_id: User.all.sample.id)

Skill.create(name: "sound healing", category: "self-care", description: "heal your body and mind with a session of sound bath and meditation", video_url: "https://experiencelife.com/wp-content/uploads/2020/04/sound-bath-1280x720.jpg", user_id: User.all.sample.id)
Skill.create(name: "parallel parking", category: "miscellaneous", description: "is parallel parking preventing you from passing your driving test? You only need one lesson to achieve a perfect parallel park every time. message me to learn my ways", video_url: "https://www.myimprov.com/wp-content/uploads/2016/03/ParallelParkingFail.jpg", user_id: User.all.sample.id)
Skill.create(name: "moonwalk", category: "health & fitness", description: "have you always wanted to perfect your moonwalk so you can show it off on the dance floor? Learn to moonwalk like you're actually on the moon, you'll be floating in air in no time", video_url: "https://images.fineartamerica.com/images/artworkimages/mediumlarge/1/moonwalk-dance-of-michael-jackson-julie-yu.jpg", user_id: User.all.sample.id)
Skill.create(name: "taking selfies", category: "miscellaneous", description: "is your dream to become an instagram influencer? learn to take the selfies that will attract thousands of followers in no time", video_url: "https://images-na.ssl-images-amazon.com/images/I/71gGGQlN9jL._AC_SL1464_.jpg", user_id: User.all.sample.id)
Skill.create(name: "organizing service", category: "home repair", description: "i'll organize your house, Marie Kondo style", video_url: "https://d2d5f3568fvb9s.cloudfront.net/wp-content/uploads/2019/01/14145343/mariekondo2-960x500.jpg", user_id: User.all.sample.id)

puts "Complete!"