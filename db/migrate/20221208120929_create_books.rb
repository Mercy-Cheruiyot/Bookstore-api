class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :author_id
      t.integer :user_id
      t.string :genre
      t.string :image
      t.integer :publication_year

      t.timestamps
    end
  end
end
