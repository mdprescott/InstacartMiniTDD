class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :description
      t.float :price
      t.boolean :looseweight
      t.references :warehouse, foreign_key: true

      t.timestamps
    end
  end
end
