class CreatePersonalStories < ActiveRecord::Migration[5.2]
  def change
    create_table :personal_stories do |t|
      t.text :story
      t.references :contributors

      t.timestamps
    end
  end
end
