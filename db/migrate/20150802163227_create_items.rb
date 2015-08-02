class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :image
      t.string :description
      t.float :price
      t.references :category

      t.timestamps null: false
    end
  end
end
