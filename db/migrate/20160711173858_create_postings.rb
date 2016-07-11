class CreatePostings < ActiveRecord::Migration
  def change
    create_table :postings do |t|
      t.string :title, { null: false }
      t.text :description, { null: false }
      t.string :edit_key
      t.string :email, { null: false }
      t.references :subcategory, index: true
      t.timestamps null: false
    end
  end
end
