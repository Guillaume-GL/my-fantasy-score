class AddTeamawayToGames < ActiveRecord::Migration[6.1]
  def change
    add_reference :games, :team_away, index: true
    add_foreign_key :games, :teams, column: :team_away_id
  end
end
