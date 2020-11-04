class MessageSerializer < ActiveModel::Serializer
  attributes :content, :sender_id, :recipient_id, :created_at, :updated_at
  belongs_to :sender, class_name: "User"
  belongs_to :recipient, class_name: "User"
end
