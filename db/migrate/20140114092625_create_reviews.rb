class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :name
      t.text :desc
      t.text :short_text
      t.text :text
      t.boolean :show_on_main
      t.integer :sort
      t.string :ancestry

      t.timestamps
    end
  end
end
