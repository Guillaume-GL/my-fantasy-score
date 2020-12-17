class CreateLeagues < ActiveRecord::Migration[6.1]
  def change
    create_table :leagues do |t|
      t.references :user
      t.string :name
      t.text :gain

      t.timestamps
    end
  end
end
