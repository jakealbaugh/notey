class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :message
      t.string :color, limit: 10
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
