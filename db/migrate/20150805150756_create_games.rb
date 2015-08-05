class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :outcome
      t.string :player_state
      t.string :computer_state
      t.string :score

      t.timestamps null: false
    end
  end
end
