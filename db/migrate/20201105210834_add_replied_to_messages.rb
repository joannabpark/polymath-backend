class AddRepliedToMessages < ActiveRecord::Migration[6.0]
  def change
    add_column :messages, :replied, :boolean
  end
end
