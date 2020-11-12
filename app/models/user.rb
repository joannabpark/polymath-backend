class User < ApplicationRecord
    has_many :providing_lessons, foreign_key: :provider_id, class_name: "Lesson"
    has_many :receivers, through: :providing_lessons
    has_many :receiving_lessons, foreign_key: :receiver_id, class_name: "Lesson"
    has_many :providers, through: :receiving_lessons

    has_many :skills

    has_many :received_msgs, foreign_key: :recipient_id, class_name: "Message"
    has_many :senders, through: :received_msgs

    has_many :sent_msgs, foreign_key: :sender_id, class_name: "Message"
    has_many :recipients, through: :sent_msgs
    has_secure_password

    validates :username, :first_name, :email, :location, :image_url, :password_digest, presence: true
    validates :username, :email, uniqueness: true
    # validate :real_email?
    # def real_email? # Verifies if email has an @ and the 4th to last position of email field is a period.
    #     if self.email.include?("@") && self.email.last(4).first == "."
    #      true
    #     else
    #      errors.add(:email, "must be valid")
    #     end
    #  end
end
