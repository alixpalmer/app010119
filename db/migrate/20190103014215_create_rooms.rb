class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.references :report, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end