class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :title
      t.string :description
      t.string :img
      t.integer :age
      t.string :linkOfficial
      t.string :linkNoOfficial

      t.timestamps
    end
  end
end
