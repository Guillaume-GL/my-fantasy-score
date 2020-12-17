class AddGameToPronostics < ActiveRecord::Migration[6.1]
  def change
    add_reference :pronostics, :game, null: false, foreign_key: true
  end
end
