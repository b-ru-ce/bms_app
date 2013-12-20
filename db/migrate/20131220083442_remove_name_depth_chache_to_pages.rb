class RemoveNameDepthChacheToPages < ActiveRecord::Migration
  def change
    remove_column :pages, :names_depth_cache
  end
end
