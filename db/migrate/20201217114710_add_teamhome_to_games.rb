class AddTeamhomeToGames < ActiveRecord::Migration[6.1]
  def change
    add_reference :games, :team_home, index: true
    add_foreign_key :games, :teams, column: :team_home_id
  end
end
