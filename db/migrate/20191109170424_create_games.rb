class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :score
      t.references :team
      t.references :match

      t.timestamps
    end
  end
end
