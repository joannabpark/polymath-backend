class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :title
      t.text :content
      t.integer :lesson_id

      t.timestamps
    end
  end
end
