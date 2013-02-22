class CreateAlbumns < ActiveRecord::Migration
  def change
    create_table :albumns do |t|
      t.string :name
      t.string :desc
      t.string :image

      t.timestamps
    end
  end
end
