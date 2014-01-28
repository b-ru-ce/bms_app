class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :category_id
      t.string :title
      t.string :image_uid
      t.integer :price
      t.text :text
      t.integer :sort
      t.string :ancestry

      t.timestamps
    end

    add_index :products, :ancestry

  end
end
