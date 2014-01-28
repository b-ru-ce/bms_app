class AddTitleOfWindowToProducts < ActiveRecord::Migration
  def change
    add_column :products, :title_of_window, :string
    add_column :products, :meta, :text
  end
end
