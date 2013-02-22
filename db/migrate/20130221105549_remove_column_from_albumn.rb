class RemoveColumnFromAlbumn < ActiveRecord::Migration
  def up
    remove_column :albumns, :image
  end

  def down
    add_column :albumns, :image, :string
  end
end
