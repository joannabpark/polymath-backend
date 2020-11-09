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

User.create(username: "jojo", password: "123", first_name: "JoAnna", last_name: "Park", email: "joannabpark1@gmail", points: 1, location: "Chicago", image_url: "https://media-exp1.licdn.com/dms/image/C4E03AQHhY1RZEx-PxA/profile-displayphoto-shrink_200_200/0?e=1609372800&v=beta&t=DyrOQAs4lk8NQCgomBbV_9tElkf4rVGdmcbL3ymqwU4")
User.create(username: "bobo", password: "123", first_name: "Bob", last_name: "Ross", email: "bobross@gmail", points: 1, location: "New York", image_url: "https://www.biography.com/.image/t_share/MTIwNjA4NjMzOTU5NTgxMTk2/bob-ross-9464216-1-402.jpg")

Skill.create(name: "violin", category: "musical instrument", description: "Learn to play the violin", signed_up: false, video_url: "https://musicadvisor.com/wp-content/uploads/2017/05/playing-the-violin.jpg", user_id: User.first.id)
Skill.create(name: "painting", category: "visual arts", description: "Let me teach you how to use your brush", signed_up: false, video_url: "https://images-na.ssl-images-amazon.com/images/I/71KaNz7a4JL._AC_SL1024_.jpg")
Skill.create(name: "simple car stuff", category: "auto repair", description: "oil change, brake pads, air filters", signed_up: false, video_url: "https://www.thisweknow.org/wp-content/uploads/2018/10/Professional-Car-Mechanic.jpg", user_id: User.first.id)
Skill.create(name: "microsoft excel", category: "computer", description: "who says excel is an outdated skill to have", signed_up: false, video_url: "https://miro.medium.com/max/1200/0*XZu4UXGcY7zM7Ffr.png", user_id: User.first.id)
Skill.create(name: "tennis", category: "sports", description: "the only sport where social distanced play is possible", signed_up: false, video_url: "https://static01.nyt.com/images/2020/03/31/sports/31virus-tennis02/31virus-tennis02-superJumbo-v2.jpg", user_id: User.first.id)
Skill.create(name: "vegetarian cooking", category: "health & fitness", description: "say no to meat, and learn to cook your veggies right", signed_up: false, video_url: "https://imagesvc.meredithcorp.io/v3/mm/image?q=85&c=sc&poi=face&url=https%3A%2F%2Fimg1.cookinglight.timeinc.net%2Fsites%2Fdefault%2Ffiles%2Fstyles%2F4_3_horizontal_-_1200x900%2Fpublic%2F1542730855%2Favocado-black-bean-and-charred-tomato-bowl-detox-book-p28_0.jpg%3Fitok%3Dcg-HtykS", user_id: User.first.id)
Skill.create(name: "tarot card reading", category: "miscellaneous", description: "2021 will bring new and better things", signed_up: false, video_url: "https://www.sfweekly.com/wp-content/uploads/2020/08/tarot-2469670_1280.jpg", user_id: User.second.id)
Skill.create(name: "guitar", category: "musical instrument", description: "have you always wanted to play in a band? now is the time to pick up the guitar", signed_up: false, video_url: "https://play-guitars.com/wp-content/uploads/2019/06/which-is-the-easiest-guitar-to-learn-for-beginners.jpg", user_id: User.second.id)
Skill.create(name: "spanish", category: "languages", description: "aprende hablar en espanol", signed_up: false, video_url: "https://www.swedishnomad.com/wp-content/images/2019/08/Spanish-Words-2.jpg", user_id: User.second.id)
Skill.create(name: "league of legends", category: "games", description: "champion and role-specific strategies", signed_up: false, video_url: "https://images.contentstack.io/v3/assets/blt731acb42bb3d1659/blt45d6c2043ff36e28/5e21837f146ca8115b2d3332/Champion-List.jpg", user_id: User.second.id)

# UserSkill.create(user_id: User.first.id, skill_id: Skill.first.id)
# UserSkill.create(user_id: User.first.id, skill_id: Skill.third.id)
# UserSkill.create(user_id: User.first.id, skill_id: Skill.fourth.id)
# UserSkill.create(user_id: User.first.id, skill_id: Skill.fifth.id)
# UserSkill.create(user_id: User.second.id, skill_id: Skill.second.id)

# Lesson.create(datetime: Time.strptime('06/30/2021', '%m/%d/%Y'), description: "violin lesson for Bob", is_completed: false, provider_id: User.first.id, receiver_id: User.second.id, skill_id: Skill.first.id, skill_name: Skill.first.name)
# Lesson.create(datetime: Time.strptime('06/30/2021', '%m/%d/%Y'), description: "some random skill", is_completed: false, provider_id: User.first.id, receiver_id: User.second.id, skill_id: Skill.second.id, skill_name: Skill.second.name)

puts "Complete!"

# Cohort.find_by(code: nil).id