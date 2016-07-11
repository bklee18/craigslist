class CreateSubcategories < ActiveRecord::Migration
  def change
    create_table :subcategories do |t|
      t.string :name, { null: false }
      t.references :category, index: true
      t.timestamps null: false
    end
  end
end
