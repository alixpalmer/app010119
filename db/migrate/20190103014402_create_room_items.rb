class CreateRoomItems < ActiveRecord::Migration[5.2]
  def change
    create_table :room_items do |t|
      t.references :room, foreign_key: true
      t.string :name
      t.text :status

      t.timestamps
    end
  end
end
