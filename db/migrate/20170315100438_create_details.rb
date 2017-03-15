class CreateDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :details do |t|
      t.integer :user_id
      t.string :name
      t.integer :dob
      t.string :address
      t.integer :number
      t.string :gender
      t.timestamps
    end
  end
end
