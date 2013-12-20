class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.text :title
      t.date :date
      t.text :short_text
      t.text :text
      t.string :title_of_window

      t.timestamps
    end
  end
end
