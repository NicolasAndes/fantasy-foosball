class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.string  :name
      t.integer :home_team_id
      t.integer :away_team_id
      t.integer :game1_home_team_score
      t.integer :game1_away_team_score
      t.integer :game2_home_team_score
      t.integer :game2_away_team_score
      t.integer :game3_home_team_score
      t.integer :game3_away_team_score
      t.integer :match_winner

      t.timestamps
    end
  end
end
