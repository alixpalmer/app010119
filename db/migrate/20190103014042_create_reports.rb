class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.integer :lessor_id
      t.integer :tenant_id
      t.string :status
      t.string :address
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
