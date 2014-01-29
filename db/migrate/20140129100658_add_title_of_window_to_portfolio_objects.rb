class AddTitleOfWindowToPortfolioObjects < ActiveRecord::Migration
  def change
    add_column :portfolio_objects, :title_of_window, :string
    add_column :portfolio_objects, :meta, :text
  end
end
