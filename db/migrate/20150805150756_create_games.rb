class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :user_dice
      t.string :cpu_dice
      t.integer :player_score
      t.integer :cpu_score

      t.timestamps null: false
    end
  end
end
