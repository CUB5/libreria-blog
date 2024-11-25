class CreateBooks < ActiveRecord::Migration[8.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :category
      t.text :content
      t.text :synopsis
      t.boolean :published

      t.timestamps
    end
  end
end
