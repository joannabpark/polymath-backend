class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :full_name, :email, :points, :location, :image_url, :created_at
  has_many :providing_lessons, foreign_key: :provider_id, class_name: "Lesson"
  has_many :receivers, through: :providing_lessons
  has_many :receiving_lessons, foreign_key: :receiver_id, class_name: "Lesson"
  has_many :providers, through: :receiving_lessons

  has_many :user_skills
  has_many :skills, through: :user_skills

  has_many :received_msgs, foreign_key: :recipient_id, class_name: "Message"
  has_many :senders, through: :received_msgs

  has_many :sent_msgs, foreign_key: :sender_id, class_name: "Message"
  has_many :recipients, through: :sent_msgs


  def full_name
    full_name = object.first_name + ' ' + object.last_name
    return full_name
 end
end