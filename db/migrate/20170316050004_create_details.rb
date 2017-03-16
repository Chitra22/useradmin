class CreateDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :details do |t|
      t.string :name
      t.integer :user_id
      t.date :dob
      t.integer :number 
      t.string :address
      t.string :gender

      t.timestamps
    end
  end
end
