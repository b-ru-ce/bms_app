class AddTitleOfWindowToServices < ActiveRecord::Migration
  def change
    add_column :services, :title_of_window, :string
    add_column :services, :meta, :text
  end
end
