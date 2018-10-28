class CreateContributorShelters < ActiveRecord::Migration[5.2]
  def change
    create_table :contributor_shelters do |t|
      t.text :contribution
      t.references :shelters
      t.references :contributors


      t.timestamps
    end
  end
end
