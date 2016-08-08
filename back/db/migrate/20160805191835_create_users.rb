class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.belongs_to :role, foreign_key: true
      t.string :identity
      t.string :name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :user_name
      t.string :password_digest
      t.date :birth_date
      t.boolean :active,default:true

      t.timestamps
    end
  end
end
