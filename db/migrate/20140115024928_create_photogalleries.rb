class CreatePhotogalleries < ActiveRecord::Migration
  def change
    create_table :photogalleries do |t|
      t.text :title
      t.integer :sort
      t.string :ancestry

      t.timestamps
    end
  end
end
