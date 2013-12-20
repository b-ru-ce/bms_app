class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.text :text
      t.string :purpose
      t.boolean :show_in_menu
      t.string :menu
      t.text :meta

      t.timestamps
    end
  end
end
