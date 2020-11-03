class AddSkillNameToLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :skill_name, :string
  end
end
