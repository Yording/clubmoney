class CreateContributes < ActiveRecord::Migration[5.0]
  def change
    create_table :contributes do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :event, foreign_key: true
      t.integer :quota,0
      t.integer :snack,0
      t.belongs_to :fine, foreign_key: true
      t.integer :debt,0

      t.timestamps
    end
  end
end
