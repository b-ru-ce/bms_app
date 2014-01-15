class AddTitleOfWindowToPhotoGalleries < ActiveRecord::Migration
  def change
    add_column :photo_galleries, :title_of_window, :string
  end
end
