class CreateGivings < ActiveRecord::Migration[5.2]
  def change
    create_table :givings do |t|
      t.text :contributions
      t.references :contributors
      t.string :contribution_shelter

      t.timestamps
    end
  end
end
