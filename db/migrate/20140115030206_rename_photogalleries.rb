class RenamePhotogalleries < ActiveRecord::Migration
  def change
    rename_table :photogalleries, :photo_galleries
  end
end
