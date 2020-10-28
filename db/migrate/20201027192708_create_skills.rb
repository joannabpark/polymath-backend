class CreateSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :skills do |t|
      t.string :name
      t.string :category
      t.string :description
      t.boolean :signed_up
      t.string :video_url

      t.timestamps
    end
  end
end
