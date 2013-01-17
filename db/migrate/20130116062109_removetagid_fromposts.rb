class RemovepostidFromtags < ActiveRecord::Migration
  def up
  	remove_column :posts, :tag_id
  end

  def down
  end
end
