class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.string :date
      t.string :description
      t.boolean :is_completed
      t.integer :provider_id
      t.integer :receiver_id
      t.integer :user_skill_id

      t.timestamps
    end
  end
end
