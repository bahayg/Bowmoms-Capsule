class AddColumnToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :disease_id, :integer
  end
end
