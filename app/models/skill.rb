class Skill < ApplicationRecord
    belongs_to :user
    has_many :lessons

    validates :name, :category, :description, presence: true
end
