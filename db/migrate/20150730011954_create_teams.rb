class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :conference
      t.string :division

      t.timestamps null: false
    end
  end
end
