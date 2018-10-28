class CreateShelters < ActiveRecord::Migration[5.2]
  def change
    create_table :shelters do |t|
      t.references :contributor_shelters
      t.string :name
      t.integer :capacity

      t.timestamps
    end
  end
end
