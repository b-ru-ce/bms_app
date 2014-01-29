class AddMetaToPhotoGalleries < ActiveRecord::Migration
  def change
    add_column :photo_galleries, :meta, :text
  end
end
