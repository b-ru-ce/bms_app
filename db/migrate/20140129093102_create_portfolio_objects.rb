class CreatePortfolioObjects < ActiveRecord::Migration
  def change
    create_table :portfolio_objects do |t|
      t.string :title
      t.string :image_uid
      t.text :short_text
      t.text :text
      t.integer :sort
      t.string :ancestry

      t.timestamps
    end
    add_index :portfolio_objects, :ancestry
  end
end
