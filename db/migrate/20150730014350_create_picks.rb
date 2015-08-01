class CreatePicks < ActiveRecord::Migration
  def change
    create_table :picks do |t|
      t.string :acc_champ
      t.string :big_ten_champ
      t.string :big_twelve_champ
      t.string :national_champ
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
