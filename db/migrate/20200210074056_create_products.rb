class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :author
      t.string :description
      t.string :image_url
      t.decimal :price, precision: 8, scale: 3

      t.timestamps
    end
  end
end
