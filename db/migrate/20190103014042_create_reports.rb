class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.integer :user_id
      t.string :status
      t.string :address

      t.timestamps
    end
  end
end
