class AddSkillIdToLesson < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :skill_id, :integer
  end
end
