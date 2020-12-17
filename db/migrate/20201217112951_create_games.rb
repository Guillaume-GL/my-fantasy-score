class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.integer :goal_team_home_real
      t.integer :goal_team_away_real
      t.string :match_group_name_and_day
      t.references :competition

      t.timestamps
    end
  end
end
