class CreateTokens < ActiveRecord::Migration[5.0]
  def change
    create_table :tokens do |t|
      t.string :token
      t.string :name
      t.boolean :active,default:true
      t.integer :number_of_requests,default:0

      t.timestamps
    end
  end
end
