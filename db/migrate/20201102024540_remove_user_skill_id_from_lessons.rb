class RemoveUserSkillIdFromLessons < ActiveRecord::Migration[6.0]
  def change
    remove_column :lessons, :user_skill_id, :integer
  end
end
