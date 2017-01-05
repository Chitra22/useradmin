class AddCreatedByToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :created_by, :string
  end
end
