class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, { null: false }
      t.references :city, index: true
      t.timestamps null: false
    end
  end
end
