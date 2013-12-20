class AddNamesDepthCacheToPage < ActiveRecord::Migration
  def change
    add_column :pages, :names_depth_cache, :string
  end
end
