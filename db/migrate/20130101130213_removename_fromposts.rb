class RemovenameFromposts < ActiveRecord::Migration
  def up
  	remove_column :posts, :name
  end

  def down
  end
end
