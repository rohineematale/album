class AddAlbumnIdToImages < ActiveRecord::Migration
  def change
    add_column :images, :albumn_id, :integer
  end
end
