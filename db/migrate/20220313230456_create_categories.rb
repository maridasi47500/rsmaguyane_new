class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :url
      t.string :title
      t.string :description
      t.integer :nb
      t.timestamps	
    end
  end
end
