class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.date :date
      t.integer :profit,default:0.0
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
