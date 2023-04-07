class CreatePlayerDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :player_details do |t|
      t.integer :skill_id
      t.integer :rank
      t.integer :level
      t.integer :experience
      t.string :player_name

      t.timestamps
    end
  end
end
