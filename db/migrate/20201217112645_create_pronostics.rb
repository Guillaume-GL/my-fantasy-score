class CreatePronostics < ActiveRecord::Migration[6.1]
  def change
    create_table :pronostics do |t|
      t.integer :goal_team_home_prono
      t.integer :goal_team_away_prono

      t.timestamps
    end
  end
end
