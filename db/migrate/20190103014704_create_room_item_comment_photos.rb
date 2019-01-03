class CreateRoomItemCommentPhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :room_item_comment_photos do |t|
      t.references :room_item_comment, foreign_key: true
      t.text :photo

      t.timestamps
    end
  end
end
