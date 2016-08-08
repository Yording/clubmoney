class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.belongs_to :loan, foreign_key: true
      t.decimal :interest
      t.integer :quota
      t.date :date

      t.timestamps
    end
  end
end
