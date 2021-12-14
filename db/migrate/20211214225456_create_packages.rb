class CreatePackages < ActiveRecord::Migration[7.1]
  def change
    create_table :packages do |t|
      t.string :name
      t.integer :price_cents
      t.text :description

      t.timestamps
    end
  end
end
