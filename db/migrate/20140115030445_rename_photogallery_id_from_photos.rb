class RenamePhotogalleryIdFromPhotos < ActiveRecord::Migration
  def change
    rename_column :photos, :photogallery_id, :photo_gallery_id
  end
end
