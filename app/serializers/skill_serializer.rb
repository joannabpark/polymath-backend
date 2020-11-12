class SkillSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :description, :video_url, :created_at, :user_id
  belongs_to :user
  has_many :lessons
end
