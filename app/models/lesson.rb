class Lesson < ApplicationRecord
    belongs_to :provider, class_name: "User"
    belongs_to :receiver, class_name: "User"
    belongs_to :skill
    has_many :comments
end
