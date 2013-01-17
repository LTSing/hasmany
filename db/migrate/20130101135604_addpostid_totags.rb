class AddpostidTotags < ActiveRecord::Migration
  def up
  	add_column :tags, :post_id, :integer
  end

  def down
  end
end
