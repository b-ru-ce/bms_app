class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.text :name
      t.text :email
      t.text :phone
      t.text :theme
      t.text :text

      t.timestamps
    end
  end
end
