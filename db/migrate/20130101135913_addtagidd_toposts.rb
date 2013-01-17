class AddtagiddToposts < ActiveRecord::Migration
  def up
  	add_column :posts, :tag_id, :integer
  end

  def down
  end
end
