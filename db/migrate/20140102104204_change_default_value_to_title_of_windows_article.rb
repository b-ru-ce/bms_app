class ChangeDefaultValueToTitleOfWindowsArticle < ActiveRecord::Migration
  def change
    change_column :articles, :title_of_window, :string, :default => ''
  end
end
