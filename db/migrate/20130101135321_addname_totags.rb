class AddnameTotags < ActiveRecord::Migration
  def up
  	add_column :tags, :name, :string
  end

  def down
  end
end
