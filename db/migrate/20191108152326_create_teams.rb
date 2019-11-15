class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string  :name
      t.integer :player
      t.integer :wins, default: 0
      t.float   :win_percentage, default: 0.0

      t.timestamps
    end
  end
end
