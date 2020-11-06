class LessonSerializer < ActiveModel::Serializer
  attributes :id, :date, :description, :is_completed, :provider_id, :receiver_id, :created_at, :skill_id, :skill_name
  belongs_to :provider, class_name: "User"
  belongs_to :receiver, class_name: "User"
  belongs_to :skill
  has_many :comments
end