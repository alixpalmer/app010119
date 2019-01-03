class CreateRoomItemComments < ActiveRecord::Migration[5.2]
  def change
    create_table :room_item_comments do |t|
      t.references :room_item, foreign_key: true
      t.string :name
      t.text :status

      t.timestamps
    end
  end
end
