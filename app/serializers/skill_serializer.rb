class SkillSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :description, :signed_up, :video_url
  has_many :user_skills
  has_many :users, through: :user_skills
end
