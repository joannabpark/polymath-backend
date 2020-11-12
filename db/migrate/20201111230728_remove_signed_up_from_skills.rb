class RemoveSignedUpFromSkills < ActiveRecord::Migration[6.0]
  def change
    remove_column :skills, :signed_up, :boolean
  end
end
