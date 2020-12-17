class AddPronosticToLeagues < ActiveRecord::Migration[6.1]
  def change
    add_reference :leagues, :pronostic, null: false, foreign_key: true
  end
end
