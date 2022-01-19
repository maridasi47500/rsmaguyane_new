class CreateCats < ActiveRecord::Migration[6.0]
  def change
    create_table :categhavecats do |t|
      t.integer :cat_id
      t.integer :category_id
    end
    create_table :cats do |t|
      t.string :name
      t.timestamps
    end
  end
end
