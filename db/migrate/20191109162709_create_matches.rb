class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.string  :name
      t.integer :first_team
      t.integer :second_team

      t.timestamps
    end
  end
end
