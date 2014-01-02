class AddPageTitleToPage < ActiveRecord::Migration
  def change
    add_column :pages, :title_of_window, :string, :default => ''
  end
end
