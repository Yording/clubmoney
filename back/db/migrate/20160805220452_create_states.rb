class CreateStates < ActiveRecord::Migration[5.0]
  def change
    create_table :states do |t|
      t.string :state
      t.text :description

      t.timestamps
    end
  end
end
