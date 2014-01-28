class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.text :meta
      t.string :title_of_window
      t.string :ancestry
      t.integer :sort

      t.timestamps
    end

    add_index :categories, :ancestry
  end
end
