class CreatePackages < ActiveRecord::Migration[7.1]
  def change
    create_table :packages do |t|
      t.string :name, null: false
      t.integer :price_cents, null: false
      t.text :description
      t.string :slug, null: false

      t.timestamps
      t.index :slug
    end
  end
end
