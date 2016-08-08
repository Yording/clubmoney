class CreateLoans < ActiveRecord::Migration[5.0]
  def change
    create_table :loans do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.integer :amount_loan
      t.integer :balance,default:0
      t.belongs_to :state, foreign_key: true

      t.timestamps
    end
  end
end
