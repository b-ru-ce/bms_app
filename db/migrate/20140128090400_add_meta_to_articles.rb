class AddMetaToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :meta, :text
  end
end
