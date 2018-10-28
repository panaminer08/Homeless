class CreateIdeasForHomelesses < ActiveRecord::Migration[5.2]
  def change
    create_table :ideas_for_homelesses do |t|
      t.references :contributors
      t.text :ideas

      t.timestamps
    end
  end
end
