# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Skill.destroy_all
UserSkill.destroy_all
Lesson.destroy_all
Comment.destroy_all 
Message.destroy_all

puts "Starting Seed"

User.create(username: "jojo", password: "123", first_name: "JoAnna", last_name: "Park", email: "joannabpark1@gmail", points: 1, location: "60642", image_url: "https://media-exp1.licdn.com/dms/image/C4E03AQHhY1RZEx-PxA/profile-displayphoto-shrink_200_200/0?e=1609372800&v=beta&t=DyrOQAs4lk8NQCgomBbV_9tElkf4rVGdmcbL3ymqwU4")
User.create(username: "bobo", password: "123", first_name: "Bob", last_name: "Ross", email: "bobross@gmail", points: 1, location: "60615", image_url: "https://www.biography.com/.image/t_share/MTIwNjA4NjMzOTU5NTgxMTk2/bob-ross-9464216-1-402.jpg")

Skill.create(name: "violin", category: "musical instrument", description: "Learn to play the violin", signed_up: false, video_url: "")
Skill.create(name: "painting", category: "visual arts", description: Faker::Company.catch_phrase, signed_up: false, video_url: Faker::Company.logo)
Skill.create(name: Faker::Job.key_skill, category: Faker::Job.field, description: Faker::Company.catch_phrase, signed_up: false, video_url: Faker::Company.logo)
Skill.create(name: Faker::Job.key_skill, category: Faker::Job.field, description: Faker::Company.catch_phrase, signed_up: false, video_url: Faker::Company.logo)
Skill.create(name: Faker::Job.key_skill, category: Faker::Job.field, description: Faker::Company.catch_phrase, signed_up: false, video_url: Faker::Company.logo)
Skill.create(name: Faker::Job.key_skill, category: Faker::Job.field, description: Faker::Company.catch_phrase, signed_up: false, video_url: Faker::Company.logo)
Skill.create(name: Faker::Job.key_skill, category: Faker::Job.field, description: Faker::Company.catch_phrase, signed_up: false, video_url: Faker::Company.logo)
Skill.create(name: Faker::Job.key_skill, category: Faker::Job.field, description: Faker::Company.catch_phrase, signed_up: false, video_url: Faker::Company.logo)
Skill.create(name: Faker::Job.key_skill, category: Faker::Job.field, description: Faker::Company.catch_phrase, signed_up: false, video_url: Faker::Company.logo)

UserSkill.create(user_id: User.first.id, skill_id: Skill.first.id)
UserSkill.create(user_id: User.first.id, skill_id: Skill.third.id)
UserSkill.create(user_id: User.first.id, skill_id: Skill.fourth.id)
UserSkill.create(user_id: User.first.id, skill_id: Skill.fifth.id)
UserSkill.create(user_id: User.second.id, skill_id: Skill.second.id)

Lesson.create(date: "10-27-2020", description: "violin lesson for Bob", is_completed: false, provider_id: User.first.id, receiver_id: User.second.id, user_skill_id: UserSkill.first.id)

puts "Complete!"

# Cohort.find_by(code: nil).id